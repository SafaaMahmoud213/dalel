import 'package:dalel/core/constant/colors.dart';
import 'package:dalel/core/constant/images.dart';
import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/core/widgets/custem_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});
  PageController controller = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Skip",
                    style: CustomTextStyles.text16popp300.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                SizedBox(
                  width: 343.w,
                  height: 290.h,
                  child: CustomImages(url: AppImages.onBoard1),
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: WormEffect(
                    dotWidth: currentIndex == controller ? 25 : 6,
                    dotHeight: 6,
                    dotColor: Colors.grey.shade200,
                    activeDotColor: AppColors.brownColor,
                  ),
                  onDotClicked: (index) {
                    currentIndex = index;
                  },
                ),
                Text(
                  "Explore The history withDalel in a smart way",
                  style: CustomTextStyles.text24popp500Black,
                ),
                Text(
                  "Using our app’s history libraries you can find many historical periods ",
                  style: CustomTextStyles.text16popp300,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
