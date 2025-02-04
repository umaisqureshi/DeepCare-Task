// This is a basic Flutter widget test.
import 'package:deep_care_case_study/data/data.dart';
import 'package:deep_care_case_study/presentation/presentation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:mocktail/mocktail.dart';

class MockGetRandomNumberUseCase extends Mock
    implements GetRandomNumberUseCase {}

class FakeUseCaseResult extends Fake implements UseCaseResult<int> {}

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  late HomeBloc homeBloc;
  late MockGetRandomNumberUseCase mockUseCase;

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    registerFallbackValue(FakeUseCaseResult());
    mockUseCase = MockGetRandomNumberUseCase();
    SharedPreferences.setMockInitialValues({});
    homeBloc = HomeBloc(getRandomNumberUseCase: mockUseCase);
  });

  tearDown(() {
    homeBloc.close();
  });

  group('HomeBloc - GetRandomNumberEvent', () {
    blocTest<HomeBloc, HomeState>(
      'emits PrimeNumberState when a prime number is returned',
      build: () {
        when(() => mockUseCase.perform(any())).thenAnswer((invocation) async {
          final UseCaseResult<int> callback = invocation.positionalArguments[0];
          callback.onSuccess!(7);
        });
        return homeBloc;
      },
      act: (bloc) => bloc.add(GetRandomNumberEvent()),
      expect: () => [
        isA<PrimeNumberState>().having((state) => state.number, 'number', 7),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits PrimeNumberState when a non-prime number is returned',
      build: () {
        when(() => mockUseCase.perform(any())).thenAnswer((invocation) async {
          final UseCaseResult<int> callback = invocation.positionalArguments[0];
          callback.onSuccess!(8);
        });
        return homeBloc;
      },
      act: (bloc) => bloc.add(GetRandomNumberEvent()),
      expect: () => [
        isA<HomeInitialState>(),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits HomeErrorState when an error occurs',
      build: () {
        when(() => mockUseCase.perform(any())).thenAnswer((_) async {
          final result = _.positionalArguments[0];
          result.onError?.call(Exception("Failed to fetch number"));
          return result;
        });
        return homeBloc;
      },
      act: (bloc) => bloc.add(GetRandomNumberEvent()),
      expect: () => [isA<HomeErrorState>()],
    );
  });
}
