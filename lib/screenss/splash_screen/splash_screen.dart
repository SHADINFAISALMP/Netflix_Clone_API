import 'package:flutter/material.dart';
import 'package:netflix/bottom_navigation_bar/bottom.dart';
import 'package:netflix/reusable_widgets/reusable_widgest.dart';


class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    waitForThreeSeconds();
    super.initState();
  }

  waitForThreeSeconds() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const BottomNavigation()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Image.asset("assets/images/splashimage-5.jpg"),
      ),
    );
  }
}
