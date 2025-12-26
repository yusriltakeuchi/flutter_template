import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/theme/theme.dart';

class CustomGenericDropdown<T> extends StatelessWidget {
  final List<T> items;
  final Function(T) onChange;
  final T? selectedItem;
  final String hintText;
  final String? iconPath;
  final bool readOnly;
  final double fontSize;
  final List<DropdownMenuItem<T>> dropdownItem;
  final bool enableBorder;
  final double radius;
  final bool enablePaddingHorizontal;
  final String? arrowIconPath;
  final Color? iconColor;
  final double? iconSize;

  const CustomGenericDropdown({
    super.key,
    required this.items,
    required this.onChange,
    required this.selectedItem,
    required this.hintText,
    this.iconPath,
    this.readOnly = false,
    this.fontSize = 40,
    required this.dropdownItem,
    this.enableBorder = true,
    this.radius = 12,
    this.enablePaddingHorizontal = true,
    this.arrowIconPath,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: enableBorder ? Border.all(
          color: Colors.grey[200]!,
          width: 1
        ) : null
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSetting.setWidth(40),
        ),
        child: Column(
          children: [
            Row(
              children: [
                iconPath != null
                  ? Padding(
                      padding: EdgeInsets.only(
                        left: AppSetting.setWidth(50),
                        right: AppSetting.setWidth(30),
                      ),
                      child: SvgPicture.asset(iconPath!),
                    )
                  : const SizedBox(),
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<T>(
                      isExpanded: true,
                      borderRadius: BorderRadius.circular(8),
                      items: dropdownItem,
                      onChanged: (value) => readOnly == false ? onChange(value as T) : null,
                      value: selectedItem,
                      hint: Padding(
                        padding: EdgeInsets.only(
                          left: enablePaddingHorizontal ? AppSetting.setWidth(20) : 0,
                        ),
                        child: Text(
                          hintText,
                          style: MyTheme.style.title.copyWith(
                            fontSize: AppSetting.setFontSize(fontSize),
                            color: context.greyDarkColor,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      icon: Padding(
                        padding: EdgeInsets.only(
                          right: enablePaddingHorizontal ? AppSetting.setWidth(40) : 0,
                        ),
                        child: Image.asset(
                          arrowIconPath ?? Assets.icons.iconDownBox.path,
                          width: AppSetting.setWidth(iconSize ?? 60),
                          height: AppSetting.setHeight(iconSize ?? 60),
                          color: iconColor
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}