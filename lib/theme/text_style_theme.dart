import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_template/config/app_config.dart';

// Text Theme
class Style {

  // Singleton instance
  static final Style _instance = Style._internal();

  // Factory constructor returns the same instance
  factory Style() => _instance;

  // Private constructor
  Style._internal();

  TextStyle title = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    fontWeight: FontWeight.w600,
  );

  TextStyle semiTitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(36),
    fontWeight: FontWeight.w300,
  );

  TextStyle subtitle = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
  );

  TextStyle subtitleLight = GoogleFonts.poppins(
    fontSize: AppSetting.setFontSize(32),
    fontWeight: FontWeight.w100,
  );

}