import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static TextStyle mainHeadingStyle =
      GoogleFonts.kanit(fontSize: 30.0, fontWeight: FontWeight.w600);
  static TextStyle subHeadingStyle = GoogleFonts.kanit(fontSize: 18.0);
  static TextStyle contentFontSize = GoogleFonts.kanit(fontSize: 16.0);
  static TextStyle purpleContentFontSize =
      GoogleFonts.kanit(fontSize: 16.0, color: AppColor.burronsColor);
  static TextStyle balanceCardTitleStyle = GoogleFonts.kanit(
      fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle numberStyle =
      GoogleFonts.oswald(color: Colors.white, fontSize: 36.0);
  static TextStyle number2Style =
      GoogleFonts.oswald(color: Colors.black, fontSize: 26.0);
}

//colors

class AppColor {
  static Color burronsColor = Colors.purple.shade700;
}
