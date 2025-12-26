import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class WarningItem extends StatelessWidget {
  final String description;
  final Color color;
  final String iconPath;
  const WarningItem({
    super.key,
    required this.description,
    required this.color,
    required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSetting.setWidth(40),
          vertical: AppSetting.setHeight(25),
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: AppSetting.setWidth(50),
              height: AppSetting.setWidth(50),
            ),
            Space.w(30),
            Expanded(
              child: Text(
                description,
                style: MyTheme.style.subtitle.copyWith(
                  fontSize: AppSetting.setFontSize(30),
                  color: context.blackWhiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}