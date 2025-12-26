import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class RadioButtonWidget extends StatelessWidget {
  final List<String> items;
  final String selectedItem;
  final Function(String) onChange;
  const RadioButtonWidget({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.onChange,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .asMap()
          .map(
            (index, value) => MapEntry(
              index,
              AnimatedCrossFade(
                firstChild: _radioItem(
                  context: context,
                  title: value,
                  selected: true,
                  onClick: () => onChange(value),
                ),
                secondChild: _radioItem(
                  context: context,
                  title: value,
                  selected: false,
                  onClick: () => onChange(value),
                ),
                crossFadeState: selectedItem == value
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(milliseconds: 300),
              ),
            ),
          )
          .values
          .toList(),
    );
  }

  Widget _radioItem({
    required BuildContext context,
    required String title,
    required bool selected,
    required VoidCallback onClick,
  }) {
    return InkWell(
      onTap: () => onClick(),
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(
          right: AppSetting.setWidth(40)
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selected ? MyTheme.color.primary : context.blackWhiteColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(5),
                  vertical: AppSetting.setHeight(5),
                ),
                child: Container(
                  width: AppSetting.setWidth(32),
                  height: AppSetting.setHeight(32),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: selected ? MyTheme.color.primary : Colors.transparent,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: AppSetting.setWidth(20),
            ),
            Text(
              title,
              style: MyTheme.style.subtitle.copyWith(
                fontSize: AppSetting.setFontSize(40),
                color: const Color(0xff7B7B7B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}