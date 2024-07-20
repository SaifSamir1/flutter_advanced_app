import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/routing/app_router.dart';
import 'package:flutter_advanced_app/doc_app.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/di/dependecy_injection.dart';
import 'core/helper/app_config.dart';
import 'core/theming/app_colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  await ScreenUtil.ensureScreenSize();
  AppConfig(
    appTitle: "Development App",
    apiBaseUrl: "https://vcare.integration25.com/api/",
    themeData: ThemeData.dark().copyWith(
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorsManager.mainBlue,
    ),
  );
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
