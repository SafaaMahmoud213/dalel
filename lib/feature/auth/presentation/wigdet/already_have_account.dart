import 'package:dalel/core/constant/text_styles.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class AlreadyHaveAccount extends StatelessWidget {
  AlreadyHaveAccount({super.key, required this.subtext, required this.text});
  String text;
  String subtext;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        children: [
          TextSpan(text: text, style: CustomTextStyles.text12pacifi400),
          TextSpan(
            text: subtext,
            style: CustomTextStyles.text12pacifi400.copyWith(
              color: Color(0xffB4B4B4),
            ),
          ),
        ],
      ),
    );
  }
}
