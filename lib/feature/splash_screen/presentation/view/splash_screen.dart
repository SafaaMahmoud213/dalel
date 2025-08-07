import 'package:animate_do/animate_do.dart';
import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:dalel/feature/onboarding_screen/presentation/view/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      getIt<AppNavigator>().pushAndRemoveUntil(page: OnboardingScreen());
    });

    super.initState();
  }

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
