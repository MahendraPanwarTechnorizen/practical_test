import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practical_test/common/theme_data.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: MThemeData.themeData(fontFamily: 'Abel'),
    ),
  );
}
