import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class FilterItemCheck extends StatefulWidget {
  final String title;
  final List<String> items;
  final List<String> selectedItems;
  final Function(String) onSelect;

  const FilterItemCheck({
    super.key,
    required this.title,
    required this.items,
    required this.selectedItems,
    required this.onSelect,
  });

  @override
  State<FilterItemCheck> createState() => _FilterItemCheckState();
}

class _FilterItemCheckState extends State<FilterItemCheck> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(40),
            color: context.blackWhiteColor,
          ),
        ),
        Wrap(
          runSpacing: AppSetting.setHeight(30),
          spacing: AppSetting.setWidth(30),
          children: widget.items.map((item) {
            return FittedBox(
              child: CheckBoxItem(
                title: item,
                selected: widget.selectedItems.contains(item),
                onClick: () => widget.onSelect(item),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

class CheckBoxItem extends StatelessWidget {
  final bool selected;
  final String title;
  final VoidCallback onClick;

  const CheckBoxItem({
    super.key,
    required this.selected,
    required this.title,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(),
      child: Row(
        children: [
          SizedBox(
            width: AppSetting.setWidth(50),
            child: Checkbox(
              value: selected,
              checkColor: Colors.white,
              side: BorderSide(
                color: Colors.grey[400]!,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              activeColor: MyTheme.color.primary,
              onChanged: (value) => onClick(),
            ),
          ),
          Space.w(20),
          Text(
            title,
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(35),
              color: context.blackWhiteColor,
            ),
          ),
        ],
      ),
    );
  }
}