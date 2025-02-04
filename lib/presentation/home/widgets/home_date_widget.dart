import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeDayDateWidget extends StatelessWidget {
  const HomeDayDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(hours: 1)),
      builder: (context, snapshot) {
        return Text(
          formatDateTimeIntoDayDate(DateTime.now()),
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white54),
        );
      },
    );
  }
}
