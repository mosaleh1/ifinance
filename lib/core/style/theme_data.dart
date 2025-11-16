import 'package:flutter/material.dart';
import 'package:ifinance/core/style/app_colors.dart';
import 'package:ifinance/core/style/app_fonts.dart';
import 'package:ifinance/core/style/app_style.dart';

class AppTheme {
    static final lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      fontFamily: AppFonts.fontFamilyUrbanist,
      textTheme: TextTheme(
        titleLarge: AppStyles.primaryHeadLinesStyle,
        titleMedium: AppStyles.subtitlesStyles,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryColor,
        disabledColor: AppColors.secondaryColor,
      )
    );
}