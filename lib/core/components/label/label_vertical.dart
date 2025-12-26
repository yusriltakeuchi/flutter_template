import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class LabelVertical extends StatelessWidget {
  final String title;
  final String value;
  final Color? valueColor;
  final Widget? customValue;
  final CrossAxisAlignment crossAxisAlignment;
  final Color titleColor;
  final TextAlign textAlign;
  final double fontSize;

  const LabelVertical({
    super.key,
    required this.title,
    required this.value,
    this.valueColor,
    this.customValue,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.titleColor = Colors.grey,
    this.textAlign = TextAlign.start,
    this.fontSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          title,
          textAlign: textAlign,
          style: MyTheme.style.subtitle.copyWith(
            fontSize: AppSetting.setFontSize(fontSize),
            color: titleColor,
          ),
        ),
        Space.h(5),
        customValue ??
            Text(
              value,
              textAlign: textAlign,
              style: MyTheme.style.title.copyWith(
                fontSize: AppSetting.setFontSize(fontSize),
                color: valueColor ?? context.blackWhiteColor,
              ),
            )
      ],
    );
  }
}