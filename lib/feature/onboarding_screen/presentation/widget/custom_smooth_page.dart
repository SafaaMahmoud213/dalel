import 'package:dalel/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPage extends StatelessWidget {
  const CustomSmoothPage({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.brownColor,
        dotHeight: 7,
        dotWidth: 10,
      ),
    );
  }
}
