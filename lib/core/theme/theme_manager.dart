import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hypermart/core/components/hex_color.dart';
import 'package:hypermart/core/constants/color_manager.dart';
import 'package:hypermart/core/constants/font_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ThemeData lightTheme = ThemeData(
    // theme mode
    useMaterial3: false,
    brightness: Brightness.light,
    //
    scaffoldBackgroundColor: HexColor('#fafafa'),

    colorScheme: ThemeData().colorScheme.copyWith(
          primary: ColorManager.primaryRed,
        ),

    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: 'KumbhSans',
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 8.sp,
      ),
      headlineMedium: TextStyle(
          fontFamily: 'KumbhSans',
          color: Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 12.sp),
      headlineLarge: TextStyle(
        fontFamily: 'KumbhSans',
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'KumbhSans',
        color: Colors.black,
        fontWeight: FontWeight.w600,
        fontSize: 20.sp,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'KumbhSans',
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 24.sp,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Chewy-Regular',
        color: Colors.black,
        fontSize: 24.sp,
      ),
    ),

    // primary color
    primaryColor: ColorManager.primaryGrey,
    // appbar
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      titleTextStyle: FontManager.boldStyle,
    ),
    // elevated button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        minimumSize: const Size(50, 30),
        textStyle: FontManager.boldStyle,
        padding: const EdgeInsets.all(15),
        backgroundColor: ColorManager.primaryRed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    cardTheme: CardTheme(
      // margin: const EdgeInsets.all(0),
      elevation: 5,
      shadowColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    // input decoration theme
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      hintStyle: FontManager.smallBoldStyle,
      labelStyle: FontManager.smallBoldStyle,
      fillColor: ColorManager.textFaild,
      filled: true,

      /// enabled border
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),

      focusedBorder: OutlineInputBorder(
        // gapPadding: 30,
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color: ColorManager.textFaild,
        ),
      ),
    ),
  );
}
