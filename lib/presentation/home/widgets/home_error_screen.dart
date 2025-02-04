import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeErrorScreen extends StatefulWidget {
  final VoidCallback onPressed;
  const HomeErrorScreen({super.key, required this.onPressed});

  @override
  State<HomeErrorScreen> createState() => _HomeErrorScreenState();
}

class _HomeErrorScreenState extends State<HomeErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Something went wrong! Please try again",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            SizedBox(
              width: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Button background color
                  elevation: 5, // Elevation (shadow depth)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 12), // Button padding
                  textStyle: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: widget.onPressed,
                child: Text(
                  "Retry",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ],
        ),
      ],
    );
  }
}
