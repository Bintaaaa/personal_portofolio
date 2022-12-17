import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ColorName {
  static const softBlack = Color(0xFF373737);
  static const sofOrange = Color(0xFFFEAA6D);
  static const otherOrange = Color(0xFFFFBB7C);
  static const white = Color(0xFFFFFFFF);
}

class TextName {
  static TextStyle heading1 = GoogleFonts.poppins(
    color: ColorName.softBlack,
    fontSize: 32.sp,
  );
  static TextStyle heading2 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 28.sp,
  );
  static TextStyle heading3 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 24.sp,
  );
  static TextStyle heading4 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 20.sp,
  );
  static TextStyle subtitle1 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 24.sp,
  );
  static TextStyle subtitle2 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 20.sp,
  );
  static TextStyle subtitle3 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 18.sp,
  );
  static TextStyle subtitle4 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 14.sp,
  );
  static TextStyle subtitle5 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 12.sp,
  );
  static TextStyle subtitle6 = GoogleFonts.poppins(
      color: ColorName.softBlack, fontSize: 4.sp, fontWeight: FontWeight.w300);

  static TextStyle body1 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 16.sp,
  );
  static TextStyle body2 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 12.sp,
  );
  static TextStyle body3 = TextStyle(
    color: ColorName.softBlack,
    fontSize: 10.sp,
  );
}
