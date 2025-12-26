import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class Expandable extends StatefulWidget {
  final String title;
  final String description;
  final String? icon;
  final bool enableIcon;

  const Expandable({
    super.key,
    required this.title,
    required this.description,
    this.icon,
    this.enableIcon = true,
  });

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  bool expand = false;

  void toggleExpand() {
    setState(() {
      expand = !expand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: AppSetting.isTablet(context)
            ? AppSetting.deviceWidth * 0.8
            : null,
        child: InkWell(
          onTap: () => toggleExpand(),
          borderRadius: BorderRadius.circular(8),
          child: Padding(
            padding: EdgeInsets.only(
              top: AppSetting.setHeight(60),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        widget.icon != null && widget.enableIcon
                            ? Padding(
                          padding: EdgeInsets.only(
                            right: AppSetting.setWidth(30),
                          ),
                          child: Image.asset(
                            widget.icon!,
                            width: AppSetting.setWidth(90),
                            height: AppSetting.setWidth(90),
                          ),
                        )
                            : const SizedBox(),
                        Text(
                          widget.title,
                          style: MyTheme.style.title.copyWith(
                            fontSize: AppSetting.setFontSize(35),
                            color: context.blackWhiteColor,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      expand
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_right,
                      color: context.blackWhiteColor,
                      size: AppSetting.setFontSize(60),
                    ),
                  ],
                ),
                Space.h(40),
                Divider(
                  color: MyTheme.color.softGrey.withValues(alpha: 0.5),
                  height: 0,
                ),
                Space.h(expand ? 30 : 0),
                if (expand)
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppSetting.setWidth(30),
                    ),
                    child: Text(
                      widget.description,
                      style: MyTheme.style.subtitle.copyWith(
                        fontSize: AppSetting.setFontSize(35),
                        color: context.blackWhiteColor,
                      ),
                    ),
                  ),
                Space.h(expand ? 30 : 0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}