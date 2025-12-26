import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/dropdown/custom_generic_dropdown.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class FilterItemDropdown extends StatelessWidget {
  final String title;
  final List<String> items;
  final String? selectedItem;
  final Function(String) setItem;

  const FilterItemDropdown({
    super.key,
    required this.title,
    required this.items,
    required this.selectedItem,
    required this.setItem,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(40),
            color: context.blackWhiteColor,
          ),
        ),
        Space.h(20),
        CustomGenericDropdown<String>(
          items: items,
          onChange: (value) => setItem(value),
          selectedItem: selectedItem,
          hintText: title,
          enableBorder: true,
          fontSize: 35,
          enablePaddingHorizontal: false,
          dropdownItem: items.isNotEmpty
              ? items.map((item) {
                  return DropdownMenuItem(
                    value: item,
                    child: Text(
                      item,
                      style: MyTheme.style.subtitle.copyWith(
                        fontSize: AppSetting.setFontSize(40),
                        color: context.blackWhiteColor,
                      ),
                    ),
                  );
                }).toList()
              : [],
        ),
      ],
    );
  }
}