import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './routes/pages.dart';
import './core/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    //home: HomePage(),
    getPages: AppPages.pages,
    initialRoute: Routes.SPLASH,
    theme: appThemeData,
  ));
}
