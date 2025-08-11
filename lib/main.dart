import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:dalel/core/service/service_locator.dart';
import 'package:dalel/core/theme/dark_theme.dart';
import 'package:dalel/core/theme/light_theme.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:dalel/feature/auth/presentation/auth_cubit/check_box_cubit/checkbox_cubit.dart';
import 'package:dalel/feature/onboarding_screen/presentation/onboard_cubit/onboarding_cubit.dart';
import 'package:dalel/feature/splash_screen/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // await getIt<CacheHelper>().cachInitialization();
  await ScreenUtil.ensureScreenSize();
  setUpServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return AdaptiveTheme(
          light: lightTheme,
          dark: darkTheme,
          initial: AdaptiveThemeMode.light,
          builder:
              (theme, darkTheme) => MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => OnboardingCubit()),
                  BlocProvider(create: (context) => CheckboxCubit()),
                ],
                child: MaterialApp(
                  navigatorKey: AppNavigator.navigatorKey,
                  debugShowCheckedModeBanner: false,
                  theme: theme,
                  home: SplashScreen(),
                ),
              ),
        );
      },
    );
  }
}
