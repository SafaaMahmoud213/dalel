import 'package:dalel/core/constant/colors.dart';
import 'package:dalel/core/constant/images.dart';
import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/core/utils/extention_sizedbox.dart';
import 'package:dalel/core/widgets/custem_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SigninHeader extends StatelessWidget {
  const SigninHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 290,
      color: AppColors.primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Dalel",
            style: CustomTextStyles.text24popp500Black.copyWith(
              fontSize: 32.sp,
              color: Colors.white,
            ),
          ),
          18.hi,
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              CustomImages(url: AppImages.login2, fit: BoxFit.scaleDown),

              CustomImages(url: AppImages.login1, fit: BoxFit.scaleDown),
            ],
          ),
        ],
      ),
    );
  }
}
