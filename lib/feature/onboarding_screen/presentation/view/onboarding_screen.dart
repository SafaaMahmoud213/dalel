import 'package:dalel/feature/onboarding_screen/presentation/widget/custom_skip.dart';
import 'package:dalel/feature/onboarding_screen/presentation/widget/onboarding_body.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            children: [CustomSkip(), OnboardingBody(controller: controller)],
          ),
        ),
      ),
    );
  }
}
