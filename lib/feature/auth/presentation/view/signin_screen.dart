import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/feature/auth/presentation/wigdet/already_have_account.dart';
import 'package:dalel/feature/auth/presentation/wigdet/custem_app_text.dart';
import 'package:dalel/feature/auth/presentation/wigdet/custom_text_form.dart';
import 'package:dalel/feature/auth/presentation/wigdet/signin_header.dart';
import 'package:dalel/feature/home_screen/presentation/view/home_screen.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SigninHeader()),
            SliverToBoxAdapter(child: SizedBox(height: 32)),
            SliverToBoxAdapter(child: CustomAppText(text: 'Welcome Back !')),
            SliverToBoxAdapter(child: SizedBox(height: 48)),
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
            SliverToBoxAdapter(child: SizedBox(height: 25)),
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
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CustomButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      getIt<AppNavigator>().push(page: HomeScreen());
                    }
                  },
                  text: "Sign In",
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: AlreadyHaveAccount(
                subtext: "Sign Up",
                text: "Don’t have an account ?  ",
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 20)),
          ],
        ),
      ),
    );
  }
}
