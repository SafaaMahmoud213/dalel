import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/core/utils/extention_sizedbox.dart';
import 'package:dalel/core/widgets/custem_images.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/feature/onboarding_screen/presentation/onboard_cubit/onboarding_cubit.dart'
    show OnboardingCubit, OnboardingState;
import 'package:dalel/feature/onboarding_screen/presentation/widget/custom_create_account_login.dart';
import 'package:dalel/feature/onboarding_screen/presentation/widget/custom_smooth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OnboardingBody extends StatelessWidget {
  OnboardingBody({super.key, this.onPageChanged, required this.controller});
  Function(int)? onPageChanged;

  PageController controller;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return SizedBox(
          height: 600.h,
          child: PageView.builder(
            onPageChanged: (index) {
              context.read<OnboardingCubit>().setcuruentIndex(index);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  SizedBox(
                    width: 343.w,
                    height: 270.h,

                    child: CustomImages(
                      url:
                          context
                              .read<OnboardingCubit>()
                              .modelView[index]
                              .images,
                    ),
                  ),
                  25.hi,
                  CustomSmoothPage(controller: controller),
                  25.hi,
                  Text(
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    context.read<OnboardingCubit>().modelView[index].title,
                    style: CustomTextStyles.text24popp500Black,
                  ),
                  15.hi,
                  Text(
                    textAlign: TextAlign.center,
                    context.read<OnboardingCubit>().modelView[index].subTitle,
                    style: CustomTextStyles.text16popp300,
                  ),

                  state.currentIndex == 2 ? 30.hi : 50.hi,
                  state.currentIndex == 2
                      ? CustomCreateAccountLogin()
                      : CustomButton(
                        onPressed: () {
                          controller.nextPage(
                            duration: Duration(microseconds: 100),
                            curve: Curves.bounceIn,
                          );
                        },
                        text: "Next",
                      ),
                ],
              );
            },
            controller: controller,
          ),
        );
      },
    );
  }
}
