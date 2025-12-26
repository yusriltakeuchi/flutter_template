import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class InputDialog extends StatelessWidget {
  final String? clickText;
  final Function(String)? onClickOK;
  final String? title;
  final TextInputAction? action;
  final TextInputType? type;
  final TextEditingController? controller;
  final String? hintText;
  final String? infoText;
  final bool secureText;

  const InputDialog({
    super.key,
    required this.onClickOK,
    this.clickText = "OK",
    this.title,
    this.action,
    this.type,
    this.controller,
    this.hintText,
    this.infoText,
    this.secureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      title: Center(
        child: Text(
          title!,
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(55),
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          infoText != null
              ? Text(
                  infoText!,
                  textAlign: TextAlign.center,
                  style: MyTheme.style.subtitle.copyWith(
                    fontSize: AppSetting.setFontSize(36),
                  ),
                )
              : const SizedBox(),

          /// Textfield here
          TextField(
            textInputAction: action,
            keyboardType: type,
            controller: controller,
            obscureText: secureText,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(36),
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: MyTheme.style.subtitle.copyWith(
                fontSize: AppSetting.setFontSize(36),
                color: context.greyDarkColor
              ),
            ),
          ),

          const SizedBox(height: 30),

          SizedBox(
            width: AppSetting.deviceWidth,
            height: AppSetting.setHeight(100),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MyTheme.color.primary,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () => onClickOK!(controller!.text),
              child: Text(
                clickText!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}