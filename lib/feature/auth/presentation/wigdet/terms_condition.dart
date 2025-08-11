import 'package:dalel/core/constant/text_styles.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/check_box_cubit/checkbox_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BlocBuilder<CheckboxCubit, bool>(
          builder: (context, state) {
            return Checkbox(
              value: state,
              onChanged: (val) {
                context.read<CheckboxCubit>().setIsVal(val);
              },
            );
          },
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: "I have agree to our ",
                style: CustomTextStyles.text12pacifi400,
              ),
              TextSpan(
                text: "Terms and Condition",
                style: CustomTextStyles.text12pacifi400.copyWith(
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
