
import 'package:deep_care_case_study/presentation/presentation.dart';
class HomeTimerWidget extends StatelessWidget {
  const HomeTimerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HomeClockWidget(),
          SizedBox(height: 10),
          HomeDayDateWidget(),
        ],
      ),
    );
  }
}