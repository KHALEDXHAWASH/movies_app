import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_app/core/colorsManager.dart';

class ThemeManager{
  static final ThemeData dark =ThemeData(
      scaffoldBackgroundColor: ColorsManager.black,
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.roboto(fontSize: 16.sp, color: ColorsManager.yellow,fontWeight:FontWeight.normal),
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorsManager.yellow),
        backgroundColor: ColorsManager.black,
        foregroundColor: ColorsManager.yellow,


      ),

      textTheme: TextTheme(
        titleMedium: GoogleFonts.roboto(fontSize: 16.sp, color: ColorsManager.yellow,fontWeight:FontWeight.normal),
        bodySmall: GoogleFonts.roboto(fontSize: 16.sp, color: ColorsManager.white,fontWeight:FontWeight.normal),
        displaySmall: GoogleFonts.roboto(fontSize: 16.sp, color: ColorsManager.white,fontWeight:FontWeight.normal),


    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r)),
            backgroundColor: ColorsManager.yellow,
            padding: REdgeInsets.symmetric(vertical: 12),
            foregroundColor: ColorsManager.black,
            textStyle: GoogleFonts.roboto(
                fontSize: 16.sp,
                fontWeight: FontWeight.normal,
                color: ColorsManager.yellow))),
    inputDecorationTheme: InputDecorationTheme(
      prefixIconColor: ColorsManager.white,
      suffixIconColor: ColorsManager.white,
      labelStyle: GoogleFonts.inter(
        fontSize: 16.sp,
        color: ColorsManager.white,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: GoogleFonts.inter(
        fontSize: 14.sp,
        color: ColorsManager.white,
        fontWeight: FontWeight.w500,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: ColorsManager.yellow, width: 1.w),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: ColorsManager.yellow, width: 1.w),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: ColorsManager.yellow, width: 1.w),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: ColorsManager.red, width: 1.w),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            foregroundColor: ColorsManager.yellow,
            textStyle: GoogleFonts.inter(
                color: ColorsManager.yellow,
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline))),


  );
}