import 'package:flutter/material.dart';
import 'package:flutter_template/core/components/button/primary_button.dart';
import 'package:flutter_template/core/components/button/primary_outline_button.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/gen/assets.gen.dart';

import '../../../config/app_config.dart';
import '../../../theme/theme.dart';

class InfoChooseDialog extends StatelessWidget {
  final String title;
  final String description;
  final String positiveText;
  final String negativeText;
  final Function onClickPositive;
  final Function onClickNegative;
  final Color positiveButtonColor;
  final Color positiveTextColor;
  final Color negativeButtonColor;
  final Color negativeTextColor;
  final double paddingWidth;

  const InfoChooseDialog({
    super.key,
    required this.title,
    required this.description,
    required this.onClickPositive,
    required this.onClickNegative,
    required this.positiveText,
    required this.negativeText,
    required this.positiveButtonColor,
    required this.positiveTextColor,
    required this.negativeButtonColor,
    required this.negativeTextColor,
    this.paddingWidth = 70
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      insetPadding: EdgeInsets.symmetric(
        horizontal: AppSetting.setWidth(paddingWidth),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Space.h(30),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: MyTheme.color.warning.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Assets.icons.iconDownBox.image(
                  width: AppSetting.setWidth(140),
                  height: AppSetting.setWidth(140),
                ),
              ),
              Space.w(30),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: MyTheme.style.title.copyWith(
                        fontSize: AppSetting.setFontSize(43),
                      )
                    ),
                    Space.h(10),
                    Text(
                      description,
                      style: MyTheme.style.subtitle.copyWith(
                        fontSize: AppSetting.setFontSize(35),
                        color: context.blackWhiteColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Space.h(70),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: AppSetting.deviceWidth,
                child: PrimaryButton(
                  title: positiveText,
                  textColor: positiveTextColor,
                  color: positiveButtonColor,
                  useBold: false,
                  verticalPadding: 28,
                  onClick: () => onClickPositive(),
                ),
              ),
              Space.h(30),
              SizedBox(
                width: AppSetting.deviceWidth,
                child: PrimaryOutlineButton(
                  title: negativeText,
                  textColor: negativeTextColor,
                  color: negativeButtonColor,
                  radius: 30,
                  verticalPadding: 28,
                  useBold: false,
                  onClick: () => onClickNegative(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}