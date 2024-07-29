import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app_1/app_colors.dart';

class AppThemes {
  static ThemeData themeLigt = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundlight,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryColor,
        elevation: 0,
//color: AppColors.whiteColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.greyColor,
        showUnselectedLabels: false,
      ),
      bottomAppBarTheme: BottomAppBarTheme(
        color: AppColors.whiteColor,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryColor),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.poppins(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.blackColor,
        ),
        titleMedium: GoogleFonts.inter(
          fontSize: 20,
          color: AppColors.blackColor,
        ),
        titleSmall: GoogleFonts.inter(
          fontSize: 20,
          color: AppColors.blackColor,
        ),
        labelLarge: GoogleFonts.poppins(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.blackColor,
        ),
      ));
}
