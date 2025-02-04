import 'package:deep_care_case_study/presentation/presentation.dart';

class HomeErrorScreen extends StatefulWidget {
  final void Function()? onPressed;
  const HomeErrorScreen({super.key, required this.onPressed});

  @override
  State<HomeErrorScreen> createState() => _HomeErrorScreenState();
}

class _HomeErrorScreenState extends State<HomeErrorScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late bool isLoading;
  @override
  void initState() {
    super.initState();
    isLoading = false;
    _controller = AnimationController(vsync: this);
  }

  @override
  void didUpdateWidget(covariant HomeErrorScreen oldWidget) {
    isLoading = false;
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
            child: Lottie.asset("assets/error.json", onLoaded: (c) {
          _controller
            ..duration = c.duration
            ..forward()
            ..repeat();
        }, controller: _controller, height: 250, width: 250)),
        Text(
          "Something went wrong! \nPlease try again",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        isLoading
            ? CircularProgressIndicator(
                color: Colors.white,
              )
            : ElevatedButton(
                style: ButtonStyle(
                    elevation: const WidgetStatePropertyAll(10),
                    backgroundColor: WidgetStatePropertyAll(Colors.redAccent)),
                onPressed: () {
                  setState(() {
                    isLoading = true;
                  });
                  widget.onPressed?.call();
                },
                child: Text(
                  "Retry",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
      ],
    );
  }
}
