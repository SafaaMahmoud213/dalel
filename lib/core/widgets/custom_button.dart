import 'package:dalel/core/constant/colors.dart';
import 'package:dalel/core/utils/extention_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Function()? onPressed;
  String text;
  String text2;
  bool ismaximumSize;
  IconData? icon;
  Color? color;
  bool isColumn;
  CustomButton({
    super.key,
    required this.onPressed,
    required this.text2,
    this.icon,
    this.ismaximumSize = false,
    this.isColumn = false,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: ismaximumSize ? 343.w : 170.w,
          height: 56.h,
          child: FilledButton(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(
                color ?? AppColors.primaryColor,
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  side: BorderSide(
                    color:
                        color == null ? Colors.white : AppColors.primaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              maximumSize: WidgetStateProperty.all<Size>(Size(343.w, 51.h)),
              minimumSize: WidgetStateProperty.all<Size>(Size(170.w, 51.h)),
            ),
            onPressed: onPressed,
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16.sp,
                color: color == null ? Colors.white : AppColors.primaryColor,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        if (isColumn) 16.hi,
        Text(
          text2,
          style: TextStyle(
            fontSize: 16.sp,
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
