import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/click/click_item.dart';
import 'package:flutter_template/core/components/conditional/conditional_item.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final String icon;
  final double verticalPadding;
  final VoidCallback onClick;
  final bool selected;

  const FilterButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onClick,
    this.verticalPadding = 15,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: selected ? MyTheme.color.primary : Colors.grey[100],
      ),
      child: Clickable(
        onClick: () => onClick(),
        borderRadius: BorderRadius.circular(10),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSetting.setWidth(20),
            vertical: AppSetting.setHeight(verticalPadding),
          ),
          child: Row(
            children: [
              Text(
                title,
                style: MyTheme.style.subtitle.copyWith(
                  color: selected ? MyTheme.color.white : context.blackWhiteColor,
                  fontSize: AppSetting.setFontSize(35),
                ),
              ),
              Space.w(icon.isNotEmpty ? 10 : 0),
              Conditional(
                condition: icon.isNotEmpty,
                child: Image.asset(
                  icon,
                  width: AppSetting.setWidth(50),
                  height: AppSetting.setHeight(50),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}