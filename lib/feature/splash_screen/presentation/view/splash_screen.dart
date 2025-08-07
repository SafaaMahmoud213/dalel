import 'package:dalel/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Dalel", style: CustomTextStyles.text64pacifi400),
      ),
    );
  }
}
