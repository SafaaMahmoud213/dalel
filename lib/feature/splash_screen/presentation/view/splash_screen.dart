import 'package:animate_do/animate_do.dart';
import 'package:dalel/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Dance(
        animate: true,
        delay: Duration(seconds: 10),
        curve: Curves.decelerate,
        child: Center(
          child: Text("Dalel", style: CustomTextStyles.text64pacifi400),
        ),
      ),
    );
  }
}
