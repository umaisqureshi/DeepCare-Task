import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeRouteProvider extends StatelessWidget {
  const HomeRouteProvider({super.key});

  @override
  Widget build(BuildContext context) {
    final GetIt getIt = GetIt.instance;

    return BlocProvider(
      create: (context) =>
          HomeBloc(getRandomNumberUseCase: getIt.get<GetRandomNumberUseCase>()),
      child: HomeScreen(),
    );
  }
}
