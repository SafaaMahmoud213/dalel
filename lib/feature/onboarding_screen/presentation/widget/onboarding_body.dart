import 'package:dalel/core/constant/images.dart';
import 'package:dalel/core/widgets/custem_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key});

  List<String> images = [
    AppImages.onBoard1,
    AppImages.onBoard2,
    AppImages.onBoard13,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 343.w,
      height: 290.h,
      child: CustomImages(url: AppImages.onBoard1),
    );
  }
}
