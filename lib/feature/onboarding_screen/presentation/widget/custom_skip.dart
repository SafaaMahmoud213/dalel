import 'package:dalel/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

class CustomSkip extends StatelessWidget {
  const CustomSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Text(
        "Skip",
        style: CustomTextStyles.text16popp300.copyWith(
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
