import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/validate/required.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:flutter_template/theme/theme.dart';

class PrimaryTextfield extends StatefulWidget {
  final String title;
  final String? hintText;
  final TextInputAction? action;
  final TextInputType? type;
  final bool secureText;
  final TextEditingController? controller;
  final bool readOnly;
  final Function? onClick;
  final double? fontSize;
  final bool disableMaxLine;
  final TextCapitalization? capitalization;
  final bool showSuffixIcon;
  final Function? onEditComplete;
  final Function(String)? onChange;
  final Color? textColor;
  final Color? hintTextColor;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final FocusNode? focusNode;
  final bool? autoFocus;
  final int? maxLength;
  final Color? backgroundColor;
  final EdgeInsets? contentPadding;
  final bool useColorReadOnly;
  final List<TextInputFormatter>? inputFormatter;
  final double radius;
  final InputBorder? border;
  final FormFieldValidator<String> validator;
  final bool required;
  final bool enableOutline;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final int disableMaxlineNumber;
  final int minLine;
  final Function(String)? onSubmitted;
  final Color? enableColor;

  const PrimaryTextfield({
    super.key,
    required this.title,
    required this.hintText,
    required this.action,
    required this.type,
    this.secureText = false,
    required this.controller,
    this.readOnly = false,
    this.onClick,
    this.fontSize,
    this.disableMaxLine = false,
    this.capitalization,
    this.showSuffixIcon = false,
    this.onEditComplete,
    this.onChange,
    this.textColor,
    this.hintTextColor,
    this.suffixIcon,
    this.prefixIcon,
    this.focusNode,
    this.autoFocus = false,
    this.maxLength,
    this.backgroundColor,
    this.contentPadding,
    this.useColorReadOnly = true,
    this.inputFormatter,
    this.radius = 12,
    this.border,
    required this.validator,
    this.required = false,
    this.enableOutline = false,
    this.textAlign = TextAlign.start,
    this.fontWeight = FontWeight.normal,
    this.disableMaxlineNumber = 3,
    this.minLine = 1,
    this.onSubmitted,
    this.enableColor,
  });

  @override
  State<PrimaryTextfield> createState() => _PrimaryTextfieldState();
}

class _PrimaryTextfieldState extends State<PrimaryTextfield> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title.isEmpty
          ? const SizedBox()
          : widget.required
            ? Required(
                child: Text(
                  widget.title,
                  style: MyTheme.style.title.copyWith(
                    fontSize: AppSetting.setFontSize(AppSetting.isTablet(context) ? 33 : 38),
                    fontWeight: FontWeight.w600,
                    color: context.blackWhiteColor,
                  ),
                ),
              )
            : Text(
                widget.title,
                style: MyTheme.style.title.copyWith(
                  fontSize: AppSetting.setFontSize(AppSetting.isTablet(context) ? 33 : 38),
                  fontWeight: FontWeight.w600,
                  color: context.blackWhiteColor,
                ),
              ),
        Space.h(widget.title.isEmpty ? 0 : (AppSetting.isTablet(context) ? 30 : 15)),
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.radius),
          child: TextFormField(
            readOnly: widget.readOnly,
            onTap: () => widget.onClick != null ? widget.onClick!() : {},
            controller: widget.controller,
            textInputAction: widget.action,
            keyboardType: widget.type,
            onTapOutside: (_) => FocusManager.instance.primaryFocus?.unfocus(),
            obscureText: widget.secureText,
            textAlign: widget.textAlign,
            focusNode: widget.focusNode,
            inputFormatters: widget.inputFormatter,
            autofocus: widget.autoFocus!,
            obscuringCharacter: "*",
            minLines: widget.minLine,
            maxLines: widget.disableMaxLine ? widget.disableMaxlineNumber : 1,
            maxLength: widget.maxLength,
            validator: widget.validator,
            onFieldSubmitted: (value) => widget.onSubmitted != null ? widget.onSubmitted!(value) : {},
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) => widget.onChange != null ? widget.onChange!(value) : {},
            onEditingComplete: () => widget.onEditComplete != null ? widget.onEditComplete!() : {},
            style: MyTheme.style.subtitle.copyWith(
              fontSize: AppSetting.setFontSize(widget.fontSize ?? 36) - (AppSetting.isTablet(context) ? 4 : 0),
              color: widget.textColor ?? MyTheme.color.primary,
              fontWeight: widget.fontWeight
            ),
            decoration: InputDecoration(
              errorStyle: MyTheme.style.subtitle.copyWith(
                fontSize: AppSetting.setFontSize((widget.fontSize!-10)) - (AppSetting.isTablet(context) ? 4 : 0),
                color: MyTheme.color.danger,
              ),
              focusedErrorBorder: widget.enableOutline
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: BorderSide(
                      color: MyTheme.color.danger,
                      width: 1,
                    ),
                  )
                : null,
              errorBorder: widget.enableOutline
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(widget.radius),
                      borderSide: BorderSide(
                        color: MyTheme.color.danger,
                        width: 1,
                      ),
                    )
                : null,
              enabledBorder: widget.enableOutline
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: BorderSide(
                      color: widget.enableColor ?? Colors.grey[200]!,
                      width: 1,
                    ),
                  )
                : null,
              focusedBorder: widget.enableOutline
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius),
                    borderSide: BorderSide(
                      color: MyTheme.color.primary,
                      width: 1,
                    ),
                  )
                : null,
              hintText: widget.hintText,
              contentPadding: widget.contentPadding,
              filled: widget.enableOutline == false,
              fillColor: widget.readOnly == true && widget.useColorReadOnly
                  ? context.greyDarkColor.withValues(alpha: 0.4)
                  : (widget.backgroundColor ?? const Color(0xffEBF0FF)),
              counterText: "",
              hintStyle: MyTheme.style.subtitle.copyWith(
                fontSize: AppSetting.setFontSize((widget.fontSize!-5)) - (AppSetting.isTablet(context) ? 4 : 0),
                color: widget.hintTextColor ?? MyTheme.color.primary,
                fontWeight: widget.fontWeight,
              ),
              suffixIcon: widget.showSuffixIcon ? widget.suffixIcon : null,
              suffixIconConstraints: BoxConstraints(
                minHeight: AppSetting.setHeight(70),
                minWidth: AppSetting.setHeight(70),
              ),
              prefixIconConstraints: BoxConstraints(
                minHeight: AppSetting.setHeight(70),
                minWidth: AppSetting.setHeight(70),
              ),
              prefixIcon: widget.prefixIcon,
              border: widget.border ?? InputBorder.none,
            ),
            textCapitalization: widget.capitalization ?? TextCapitalization.none,
          ),
        ),
      ],
    );
  }
}

class ThousandsSeparatorInputFormatter extends TextInputFormatter {
  static const separator = ','; // Change this to '.' for other locales

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Short-circuit if the new value is empty
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // Handle "deletion" of separator character
    String oldValueText = oldValue.text.replaceAll(separator, '');
    String newValueText = newValue.text.replaceAll(separator, '');

    if (oldValue.text.endsWith(separator) &&
        oldValue.text.length == newValue.text.length + 1) {
      newValueText = newValueText.substring(0, newValueText.length - 1);
    }

    // Only process if the old value and new value are different
    if (oldValueText != newValueText) {
      int selectionIndex =
          newValue.text.length - newValue.selection.extentOffset;
      final chars = newValueText.split('');

      String newString = '';
      for (int i = chars.length - 1; i >= 0; i--) {
        if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1) {
          newString = separator + newString;
        }
        newString = chars[i] + newString;
      }

      return TextEditingValue(
        text: newString.toString(),
        selection: TextSelection.collapsed(
          offset: newString.length - selectionIndex,
        ),
      );
    }

    // If the new value and old value are the same, just return as-is
    return newValue;
  }
}