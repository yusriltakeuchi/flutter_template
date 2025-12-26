import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/theme/theme.dart';

class Space {
  static SizedBox w(double width) {
    return SizedBox(
      width: AppSetting.setWidth(width),
    );
  }

  static SizedBox h(double height) {
    return SizedBox(
      height: AppSetting.setHeight(height),
    );
  }
}

class AppSetting {
  /// Device Size
  /// ------------
  static double get deviceWidth => ScreenUtil().screenWidth;
  static double get deviceHeight => ScreenUtil().screenHeight;

  static bool isLargePhone(BuildContext context) => MediaQuery.of(context).size.width > 600 ? true : false;
  static bool isNormalPhone(BuildContext context) => MediaQuery.of(context).size.width > 400 && MediaQuery.of(context).size.width < 600 ? true : false;
  static bool isSmallPhone(BuildContext context) => MediaQuery.of(context).size.width < 400 ? true : false;
  static bool isNormalToBig(BuildContext context) => MediaQuery.of(context).size.height > 800 && MediaQuery.of(context).size.height < 1200 ? true : false;
  static bool isNormalPhoneHeight(BuildContext context) => MediaQuery.of(context).size.height > 750 && MediaQuery.of(context).size.height < 950 ? true : false;
  static bool isSmallPhoneHeight(BuildContext context) => MediaQuery.of(context).size.height < 750 ? true : false;
  static bool isReallySmallPhoneHeight(BuildContext context) => MediaQuery.of(context).size.height < 600 ? true : false;
  static bool isBigPhoneHeight(BuildContext context) => MediaQuery.of(context).size.height > 950 ? true : false;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width > 600 && MediaQuery.of(context).size.height > 700 ? true : false;

  /// Setting height and width
  static double setWidth(double width) => ScreenUtil().setWidth(width);
  static double setHeight(double height) => ScreenUtil().setHeight(height);

  /// Setting fontsize
  static double setFontSize(double size) => size.sp;


  static List<BoxShadow> get defaultShadow => [
    BoxShadow(
      color: MyTheme.color.grey.withValues(alpha: 0.2),
      blurRadius: 10,
      spreadRadius: 3,
      offset: const Offset(0, 5),
    ),
  ];

  static List<BoxShadow> get softShadow => [
    BoxShadow(
      color: MyTheme.color.grey.withValues(alpha: 0.1),
      blurRadius: 8,
      spreadRadius: 1,
      offset: const Offset(0, 5),
    ),
  ];

}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: MyTheme.color.primary,
      hintColor: MyTheme.color.primary,
      scaffoldBackgroundColor: MyTheme.color.white,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: MyTheme.color.primary),
          surfaceTintColor: Colors.transparent,
          shadowColor: MyTheme.color.black.withValues(alpha: 0.1),
          elevation: 6
      ),
      colorScheme: ColorScheme.light(
        primary: MyTheme.color.primary,
        secondary: MyTheme.color.secondary,
        error: MyTheme.color.danger,
        // Define other colors from the color scheme here
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: MyTheme.color.white,
          backgroundColor: MyTheme.color.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          iconSize: 24,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.black,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.black,
        ),
        bodySmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.black,
        ),
      ),
      // Define other theme properties like textTheme, buttonTheme, etc.
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: MyTheme.color.primary,
      hintColor: MyTheme.color.primary,
      scaffoldBackgroundColor: MyTheme.color.black,
      appBarTheme: AppBarTheme(
        backgroundColor: MyTheme.color.primary,
        iconTheme: IconThemeData(color: MyTheme.color.white),
      ),
      colorScheme: ColorScheme.dark(
        primary: MyTheme.color.primary,
        secondary: MyTheme.color.secondary,
        error: MyTheme.color.danger,
        // Define other colors from the color scheme here
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: MyTheme.color.white,
          backgroundColor: MyTheme.color.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          iconSize: 24,
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.white,
        ),
        bodyMedium: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.white,
        ),
        bodySmall: TextStyle(
          fontSize: 14.0,
          fontWeight: FontWeight.normal,
          color: MyTheme.color.white,
        ),
      ),
      // Define other theme properties like textTheme, buttonTheme, etc.
    );
  }

// Optionally, define a darkTheme if your app will have a dark mode
}