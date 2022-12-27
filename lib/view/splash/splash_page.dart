import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black87.withOpacity(0.9),
      child: Center(
        child: SizedBox(
          height: 40,
          child: Image.asset(
            "assets/images/masterclass_logo/masterclass_logo.png",
          ),
        ),
      ),
    );
  }
}
