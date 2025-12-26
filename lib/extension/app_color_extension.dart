import 'package:flutter/material.dart';
import 'package:flutter_template/theme/theme.dart';

extension AppColors on BuildContext {
  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  Color get blackWhiteColor {
    return Theme.of(this).brightness == Brightness.dark
        ? MyTheme.color.white
        : MyTheme.color.black;
  }

  Color get containerColor {
    return Theme.of(this).brightness == Brightness.dark
        ? const Color(0xff26262b)
        : MyTheme.color.white;
  }

  Color get backgroundColor {
    return Theme.of(this).brightness == Brightness.dark
        ? const Color(0xff121212)
        : MyTheme.color.white;
  }

  Color get chatBackgroundColor {
    return Theme.of(this).brightness == Brightness.dark
        ? const Color(0xff1E1E1E)
        : const Color(0xffF4F6F8);
  }

  Color get greyDarkColor {
    return Theme.of(this).brightness == Brightness.dark
        ? const Color(0xffB0B3C1)
        : const Color(0xff8288A2);
  }
}
