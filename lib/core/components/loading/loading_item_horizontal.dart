import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';

class LoadingItemHorizontal extends StatelessWidget {
  final int length;
  final double? height;
  final double? width;

  const LoadingItemHorizontal({
    super.key,
    this.length = 5,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          length,
          (i) => Container(
            width: width ?? AppSetting.setWidth(300),
            height: height ?? AppSetting.setHeight(400),
            margin: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: context.greyDarkColor.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ),
      ),
    );
  }
}