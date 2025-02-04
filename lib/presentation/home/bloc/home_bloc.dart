import 'package:deep_care_case_study/data/local/local_db.dart';
import 'package:deep_care_case_study/data/local/model/db_model.dart';
import 'package:deep_care_case_study/presentation/home/bloc/data/bloc_data.dart';
import 'package:deep_care_case_study/presentation/presentation.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetRandomNumberUseCase _getRandomNumberUseCase;
  HomeBlocData blocData = HomeBlocData();
  LocalDataBase localDataBase = LocalDataBase.instance;

  HomeBloc({required GetRandomNumberUseCase getRandomNumberUseCase})
      : _getRandomNumberUseCase = getRandomNumberUseCase,
        super(HomeInitialState()) {
    on<GetRandomNumberEvent>(_getRandomNumber);
    on<ReturnToClockEvent>(_resetAllData);
    on<GetSavedTimeEvent>(_getSavedData);
  }

  _getRandomNumber(GetRandomNumberEvent event, Emitter<HomeState> emit) {
    return _getRandomNumberUseCase.perform(UseCaseResult(
        onSuccess: (data) {
          if (isPrime(data)) {
            debugPrint("-------------PRIME------- $data -------");
            updatePrimeTime(DateTime.now(), data);

            emit(PrimeNumberState(
                number: blocData.primeNumber!,
                updatedTime: blocData.timeDifference!));
          } else if (blocData.lastPrimeTime != null) {
            debugPrint("-------------NOT PRIME------- $data -------");
            updateTimeDifference(DateTime.now());
            emit(PrimeNumberState(
                number: blocData.primeNumber!,
                updatedTime: blocData.timeDifference!));
          } else {
            debugPrint(
                "-------------Not A SINGLE PRIME YET------- $data -------");
          }
        },
        onError: (e) {}));
  }

  _getSavedData(GetSavedTimeEvent event, Emitter<HomeState> emit) async {
    DbModel? data = await localDataBase.getLastPrimeData();
    debugPrint("-------------Local Data------- $data -------");
    if (data == null) {
      blocData = blocData.copyWith(startDate: DateTime.now());
      add(GetRandomNumberEvent());
    } else {
      blocData = blocData.copyWith(
          lastPrimeTime: data.primeTime,
          primeNumber: data.primeNumber,
          timeDifference: getTimeDifference(data.primeTime, DateTime.now()));

      emit(PrimeNumberState(
          number: blocData.primeNumber!,
          updatedTime: blocData.timeDifference!));
    }
  }

  _resetAllData(ReturnToClockEvent event, Emitter<HomeState> emit) {
    blocData = blocData.copyWith(
        startDate: DateTime.now(),
        lastPrimeTime: null,
        primeNumber: null,
        timeDifference: "00:00:00");
    localDataBase.clearData();

    emit(HomeInitialState());
  }

  void updatePrimeTime(DateTime time, int number) {
    blocData = blocData.copyWith(
        lastPrimeTime: time,
        primeNumber: number,
        startDate: blocData.lastPrimeTime,
        timeDifference: "00:00:00s");
    localDataBase.saveLastPrimeData(DateTime.now(), number);
  }

  void updateTimeDifference(DateTime time) {
    blocData = blocData.copyWith(
        timeDifference: getTimeDifference(
            blocData.lastPrimeTime ?? blocData.startDate!, time));
  }

  bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i * i <= number; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }
}
