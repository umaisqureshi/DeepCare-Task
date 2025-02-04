import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeClockWidget extends StatelessWidget {
  const HomeClockWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(seconds: 20)),
      builder: (context, snapshot) {
        return Text(
          formatDateTimeIntoTime(DateTime.now()),
          style: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
        );
      },
    );
  }
}
