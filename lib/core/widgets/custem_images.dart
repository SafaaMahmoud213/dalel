import 'package:dalel/core/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class CustomImages extends StatelessWidget {
  String url;
  double? width;
  double? height;
  BoxFit? fit;
  Color? color;
  CustomImages({
    super.key,
    this.height,
    this.fit,
    required this.url,
    this.width,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    if (url.startsWith("https")) {
      return Image.network(
        url,
        color: color ?? AppColors.primaryColor,
        width: width?.w,
        height: height?.h,
        fit: fit,
        errorBuilder:
            (context, error, stackTrace) =>
                Image.asset("assets/images/error.png", width: 20, height: 20),
      );
    } else if (url.endsWith("svg")) {
      return SvgPicture.asset(
        "assets/icons/$url",
        width: width?.w,
        color: color,
        height: height?.h,
      );
    }
    return Image.asset(
      url,
      height: height?.h,
      color: color,
      width: width?.w,
      fit: fit,
      errorBuilder:
          (context, error, stackTrace) =>
              Image.asset("assets/images/error.png", width: 20, height: 20),
    );
  }
}
