import 'package:dalel/core/constant/text_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppText extends StatelessWidget {
  CustomAppText({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: CustomTextStyles.text24popp500Black.copyWith(fontSize: 28),
    );
  }
}
