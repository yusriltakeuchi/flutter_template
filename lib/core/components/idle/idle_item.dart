import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/button/primary_button.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class IdleLoadingCenter extends StatelessWidget {
  const IdleLoadingCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSetting.deviceWidth,
      height: AppSetting.deviceHeight,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class IdleLoading extends StatelessWidget {
  final Color? color;
  const IdleLoading({
    super.key,
    this.color,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(color: color),
    );
  }
}

class IdleNoItemCenter extends StatelessWidget {
  final String? title;
  final Color? color;
  final bool useDeviceHeight;
  final String? iconPath;
  final bool? useCenterText;
  final double? paddingTop;
  final VoidCallback? onRefresh;

  const IdleNoItemCenter({super.key,
    required this.title,
    this.color,
    this.useDeviceHeight = true,
    this.iconPath,
    this.useCenterText = true,
    this.paddingTop = 0,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSetting.deviceWidth,
      height: useDeviceHeight
        ? AppSetting.deviceHeight / 2
        : null,
      child: iconPath == null
      ? (
          useCenterText == true
            ? Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      title ?? " ",
                      textAlign: TextAlign.center,
                      style: MyTheme.style.subtitle.copyWith(
                        color: color ?? context.blackWhiteColor,
                        fontSize: AppSetting.setFontSize(36)
                      ),
                    ),
                    _refreshButton()
                  ],
                ),
              )
            : Padding(
              padding: EdgeInsets.only(top: paddingTop!),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title ?? " ",
                    textAlign: TextAlign.center,
                    style: MyTheme.style.subtitle.copyWith(
                      color: color ?? context.blackWhiteColor,
                      fontSize: AppSetting.setFontSize(36)
                    ),
                  ),
                  _refreshButton(),
                ],
              ),
            )
        )
      : Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            iconPath ?? "",
            width: double.infinity,
            height: AppSetting.setHeight(350)
          ),
          Text(
            title ?? " ",
            textAlign: TextAlign.center,
            style: MyTheme.style.subtitle.copyWith(
              color: color ?? context.blackWhiteColor,
              fontSize: AppSetting.setFontSize(36)
            )
          ),
          _refreshButton(),
        ],
      ),
    );
  }

  Widget _refreshButton() {
    if (onRefresh == null) return const SizedBox();
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: AppSetting.setWidth(40),
        horizontal: AppSetting.setWidth(40)
      ),
      child: FittedBox(
        child: PrimaryButton(
          useFullWidth: false,
          color: MyTheme.color.primary,
          horizontalPadding: 80,
          title: "Refresh",
          onClick: () =>  onRefresh!(),
        ),
      ),
    );
  }
}