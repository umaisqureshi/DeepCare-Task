import 'dart:async';
import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? _timer;
  @override
  void initState() {
    context.read<HomeBloc>().add(GetSavedTimeEvent());
    _startTimer();
    super.initState();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 10), (timer) {
      _getRandomNumber();
    });
  }

  void _getRandomNumber() {
    context.read<HomeBloc>().add(GetRandomNumberEvent());
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is PrimeNumberState) {
              return HomePrimeSuccessWidget(
                onClose: () {
                  _timer?.cancel();
                  context.read<HomeBloc>().add(ReturnToClockEvent());
                },
                number: state.number,
                updatedTime: state.updatedTime,
              );
            }
            return HomeTimerWidget();
          },
        ));
  }
}
