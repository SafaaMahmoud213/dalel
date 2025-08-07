import 'package:dalel/core/cache/cach_helper.dart';
import 'package:dalel/core/utils/app_navigator.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<AppNavigator>(AppNavigator());
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
