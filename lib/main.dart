import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/constant/app_colors.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.appThemePurpleColor,
        ),
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 20,
          ),
          headline3: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 18,
          ),
          headline4: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 16,
          ),
          headline5: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 15,
          ),
          headline6: TextStyle(
            fontFamily: "Inter",
            color: Colors.black,
            fontSize: 14,
          ),
        ),
      ),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
