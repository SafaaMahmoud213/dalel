import 'package:dalel/core/constant/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.dark,
  scaffoldBackgroundColor: Colors.black,
  buttonTheme: ButtonThemeData(
    buttonColor: AppColors.primaryColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
  ),

  colorScheme: ColorScheme.fromSeed(
    primary: AppColors.primaryColor,
    seedColor: AppColors.primaryColor,
    brightness: Brightness.dark,
  ),
);
