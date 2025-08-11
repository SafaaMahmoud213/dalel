import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/feature/auth/presentation/view/signin_screen.dart';
import 'package:dalel/feature/auth/presentation/wigdet/already_have_account.dart';
import 'package:dalel/feature/auth/presentation/wigdet/custem_app_text.dart';
import 'package:dalel/feature/auth/presentation/wigdet/custom_text_form.dart';
import 'package:dalel/feature/auth/presentation/wigdet/terms_condition.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 100)),
            SliverToBoxAdapter(child: CustomAppText(text: "Welcome !")),
            SliverToBoxAdapter(
              child: CustomTextForm(
                labelText: 'First Name',
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please enter current name";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
              child: CustomTextForm(
                labelText: 'Last Name ',
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please enter current name";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
              child: CustomTextForm(
                labelText: 'Email Address ',
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please enter current email";
                  }
                  return null;
                },
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(
              child: CustomTextForm(
                validator: (val) {
                  if (val!.isEmpty) {
                    return "please enter current password";
                  }
                  return null;
                },
                isPass: true,
                isSuffix: true,
                keyboardType: TextInputType.visiblePassword,
                labelText: 'Password',
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(child: TermsAndCondition()),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
            SliverToBoxAdapter(
              child: CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    getIt<AppNavigator>().push(page: SigninScreen());
                  }
                },
                text: "Sign Up",
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: AlreadyHaveAccount(
                subtext: "Sign In",
                text: "Already have an account ? ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
