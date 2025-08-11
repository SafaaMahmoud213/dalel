import 'package:dalel/core/constant/colors.dart';
import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:dalel/core/utils/extention_sizedbox.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/feature/auth/presentation/view/sign_up_screen.dart';
import 'package:dalel/feature/auth/presentation/view/signin_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCreateAccountLogin extends StatelessWidget {
  const CustomCreateAccountLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomButton(
          onPressed: () {
            getIt<AppNavigator>().push(page: SignUpScreen());
          },
          text: "Create Account",
        ),
        8.hi,
        GestureDetector(
          onTap: () {
            getIt<AppNavigator>().push(page: SigninScreen());
          },
          child: Text(
            "Login Now",
            style: CustomTextStyles.text16popp300.copyWith(
              decoration: TextDecoration.underline,
              decorationColor: AppColors.secColor,
              color: AppColors.secColor,
            ),
          ),
        ),
      ],
    );
  }
}
