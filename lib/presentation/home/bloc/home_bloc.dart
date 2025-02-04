import 'package:deep_care_case_study/presentation/presentation.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetRandomNumberUseCase _getRandomNumberUseCase;
  final LocalDataBase _localDatabase = LocalDataBase.instance;
  HomeBlocData _blocData = HomeBlocData();

  HomeBloc({required GetRandomNumberUseCase getRandomNumberUseCase})
      : _getRandomNumberUseCase = getRandomNumberUseCase,
        super(HomeInitialState()) {
    on<GetRandomNumberEvent>(_handleGetRandomNumber);
    on<ReturnToClockEvent>(_handleResetAllData);
    on<GetSavedTimeEvent>(_handleGetSavedData);
  }

  Future<void> _handleGetRandomNumber(
      GetRandomNumberEvent event, Emitter<HomeState> emit) async {
    await _getRandomNumberUseCase.perform(
      UseCaseResult(
        onSuccess: (number) {
          if (_isPrime(number)) {
            _updatePrimeTime(DateTime.now(), number);
            emit(PrimeNumberState(
              number: _blocData.primeNumber ?? 0,
              updatedTime: _blocData.timeDifference ?? "00:00:00",
            ));
          } else if (_blocData.lastPrimeTime != null) {
            _updateTimeDifference(DateTime.now());
            emit(PrimeNumberState(
              number: _blocData.primeNumber ?? 0,
              updatedTime: _blocData.timeDifference ?? "00:00:00",
            ));
          } else {
            emit(HomeInitialState());
          }
        },
        onError: (e) {
          emit(HomeErrorState());
        },
      ),
    );
  }

  Future<void> _handleGetSavedData(
      GetSavedTimeEvent event, Emitter<HomeState> emit) async {
    try {
      DbModel? savedData = await _localDatabase.getLastPrimeData();

      if (savedData == null) {
        _blocData = _blocData.copyWith(startDate: DateTime.now());
        add(GetRandomNumberEvent());
      } else {
        _blocData = _blocData.copyWith(
          lastPrimeTime: savedData.primeTime,
          primeNumber: savedData.primeNumber,
          timeDifference:
              getTimeDifference(savedData.primeTime, DateTime.now()),
        );

        emit(PrimeNumberState(
          number: _blocData.primeNumber ?? 0,
          updatedTime: _blocData.timeDifference ?? "00:00:00",
        ));
      }
    } catch (e) {
      emit(HomeErrorState());
    }
  }

  Future<void> _handleResetAllData(
      ReturnToClockEvent event, Emitter<HomeState> emit) async {
    _blocData = _blocData.copyWith(
      startDate: DateTime.now(),
      lastPrimeTime: null,
      primeNumber: null,
      timeDifference: "00:00:00",
    );
    _localDatabase.clearData();

    emit(HomeInitialState());
  }

  Future<void> _updatePrimeTime(DateTime time, int number) async {
    _blocData = _blocData.copyWith(
      lastPrimeTime: time,
      primeNumber: number,
      startDate: _blocData.lastPrimeTime,
      timeDifference: "00:00:00",
    );

    _localDatabase.saveLastPrimeData(time, number);
  }

  void _updateTimeDifference(DateTime time) {
    _blocData = _blocData.copyWith(
      timeDifference: getTimeDifference(
        _blocData.lastPrimeTime ?? _blocData.startDate!,
        time,
      ),
    );
  }

  bool _isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }
}
