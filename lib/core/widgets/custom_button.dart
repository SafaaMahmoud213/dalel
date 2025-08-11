import 'package:dalel/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  Function()? onPressed;
  String text;
  bool isminimumSize;
  IconData? icon;
  Color? color;

  CustomButton({
    super.key,
    required this.onPressed,

    this.icon,
    this.isminimumSize = false,
    required this.text,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: isminimumSize ? 170.w : 343.w,
      height: 53.h,
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(
            color ?? AppColors.primaryColor,
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              side: BorderSide(
                color: color == null ? Colors.white : AppColors.primaryColor,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
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
    );
  }
}
