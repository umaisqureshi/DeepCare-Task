import 'package:deep_care_case_study/presentation/presentation.dart';

class HomePrimeSuccessWidget extends StatelessWidget {
  final int number;
  final String updatedTime;
  final VoidCallback onClose;
  const HomePrimeSuccessWidget(
      {super.key,
      required this.number,
      required this.updatedTime,
      required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Congrats!",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.teal),
          ),
          SizedBox(height: 20),
          Text(
            "You obtained a prime number, it was ${number.toString()} ",
            style: TextStyle(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(height: 20),
          Text(
            "Time since last prime number ${updatedTime.toString()}",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white54),
          ),
          SizedBox(height: 30),
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal, // Button background color

                  elevation: 5, // Elevation (shadow depth)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 12), // Button padding
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: onClose,
                child: Text(
                  "Close",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
