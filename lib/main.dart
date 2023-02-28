import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app/constant/app_colors.dart';
import 'app/routes/app_pages.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(
    GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: AppColors.appThemePurpleColor,
        ),
        primaryColor: Colors.white,
        canvasColor: Colors.white,
        textTheme: TextTheme(
          displayLarge: GoogleFonts.epilogue(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          displayMedium: GoogleFonts.epilogue(
            color: Colors.black,
            fontSize: 20,
          ),
          displaySmall: GoogleFonts.epilogue(
            color: Colors.black,
            fontSize: 18,
          ),
          headlineLarge: GoogleFonts.epilogue(
            color: Colors.black,
            fontSize: 16,
          ),
          headlineMedium: GoogleFonts.epilogue(
          color: Colors.black,
            fontSize: 15,
          ),
          headlineSmall: GoogleFonts.epilogue(
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
