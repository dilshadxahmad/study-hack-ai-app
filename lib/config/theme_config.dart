import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:study_hack_ai/constants/my_colors.dart';
import 'package:study_hack_ai/constants/my_fonts.dart';

class ThemeConfig {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: MyColors.white,
      colorScheme: ColorScheme.fromSwatch(
        backgroundColor: MyColors.white,
      ),
      appBarTheme: AppBarTheme(
        shape: Border(
          bottom: BorderSide(
            color: MyColors.lightGrey,
            width: 1.h,
          ),
        ),
        toolbarHeight: 100.h,
        iconTheme: IconThemeData(
          size: 24.sp,
          fill: 0,
          color: MyColors.black,
        ),
        actionsIconTheme: const IconThemeData(
          color: MyColors.white,
          fill: 0.5,
        ),
        backgroundColor: MyColors.white,
        // titleSpacing: 16.w,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          color: MyColors.black,
        ),
      ),
      fontFamily: MyFonts.poppinsFont,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: MyColors.primaryBlue,
        linearTrackColor: MyColors.primaryBlue.withOpacity(0.25),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(MyColors.primaryBlue),
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
          shadowColor:
              MaterialStatePropertyAll(MyColors.primaryBlue.withOpacity(0.1)),
          elevation: MaterialStatePropertyAll(8.sp),
          surfaceTintColor: const MaterialStatePropertyAll(Colors.transparent),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(MyColors.primaryBlue),
          foregroundColor: const MaterialStatePropertyAll(MyColors.white),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.white.withOpacity(0.1)),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: const MaterialStatePropertyAll(MyColors.primaryBlue),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          side: const MaterialStatePropertyAll(
            BorderSide(color: MyColors.primaryBlue),
          ),
          overlayColor:
              MaterialStatePropertyAll(MyColors.primaryBlue.withOpacity(0.1)),
          elevation: const MaterialStatePropertyAll(0),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          iconSize: const MaterialStatePropertyAll(24),
          backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
          foregroundColor: const MaterialStatePropertyAll(MyColors.black),
          overlayColor:
              MaterialStatePropertyAll(MyColors.black.withOpacity(0.1)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 0.8.h,
              ),
              borderRadius: BorderRadius.circular(13.r),
            ),
          ),
        ),
      ),
      dividerTheme: DividerThemeData(
        color: MyColors.lightGrey,
        thickness: 0.5.h,
      ),
      cardTheme: CardTheme(
        color: MyColors.white,
        surfaceTintColor: MyColors.white,
        // shadowColor: MyColors.lightGrey.withOpacity(0.1),

        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
          side: BorderSide(
            color: MyColors.lightGrey,
            width: 1.h,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        focusElevation: 0,
      ),
      tabBarTheme: TabBarTheme(
        indicatorColor: MyColors.primaryBlue,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: MyColors.primaryBlue,
          borderRadius: BorderRadius.circular(8.r),
        ),
        overlayColor: const MaterialStatePropertyAll(Colors.transparent),
        labelColor: MyColors.white,
        unselectedLabelColor: MyColors.black,
        dividerColor: Colors.transparent,
        labelPadding: EdgeInsets.all(8.h),
      ),
      drawerTheme: DrawerThemeData(
        backgroundColor: MyColors.white,
        surfaceTintColor: Colors.transparent,
        width: 348.w,
        shape: const LinearBorder(),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: MyColors.black.withOpacity(0.3),
        contentTextStyle: const TextStyle(color: MyColors.white),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: MyColors.lightGrey.withOpacity(0.5),
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.orange,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: MyColors.orange,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.r),
          ),
        ),
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14.sp,
          color: MyColors.lightGrey,
        ),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: MyColors.primaryBlue,
        selectionHandleColor: MyColors.primaryBlue,
        selectionColor: MyColors.primaryBlue.withOpacity(0.1),
      ),
      textTheme: TextTheme(
        // Display Styles
        displayLarge: TextStyle(
          fontSize: 44.sp,
          fontWeight: FontWeight.bold,
        ),
        displayMedium: TextStyle(
          fontSize: 32.sp,
        ),
        displaySmall: TextStyle(
          fontSize: 20.sp,
        ),

        // Label Styles
        labelLarge: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          fontSize: 14.sp,
          fontFamily: MyFonts.robotoFont,
          decoration: TextDecoration.underline,
          fontWeight: FontWeight.w700,
        ),

        // Body Styles
        bodyLarge: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.sp,
        ),
        bodySmall: TextStyle(
          fontSize: 14.sp,
          fontFamily: MyFonts.robotoFont,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.1,
        ),

        // Headline Styles
        headlineMedium: TextStyle(
          fontSize: 14.sp,
        ),
        headlineSmall: TextStyle(
          fontSize: 12.sp,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark();
  }
}
