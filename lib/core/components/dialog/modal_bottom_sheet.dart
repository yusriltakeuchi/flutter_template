import 'package:flutter/material.dart';
import 'package:flutter_template/extension/extensions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/conditional/conditional_item.dart';
import 'package:flutter_template/theme/theme.dart';

class ModalBottomSheet {
  static void show({
    required String? title,
    required List<Widget>? children,
    required BuildContext? context,
    double radiusCircle = 0,
    bool isDismisslable = true,
    Widget? customColumn,
    VoidCallback? onClose,
    Color backgroundColor = Colors.white,
    double paddingLeft = 40,
    double paddingRight = 40,
    double paddingBottom = 30,
    double titleFontSize = 45,
    bool isFilter = false,
    VoidCallback? onReset,
    bool enableClose = true,
  }) {
    showModalBottomSheet(
      context: context!,
      isDismissible: isDismisslable,
      backgroundColor: backgroundColor,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radiusCircle),
          topRight: Radius.circular(radiusCircle),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            padding: EdgeInsets.only(
              top: AppSetting.setHeight(title!.isNotEmpty ? 40 : 0),
              left: AppSetting.setWidth(paddingLeft),
              right: AppSetting.setWidth(paddingRight),
            ),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  title.isNotEmpty
                      ? isFilter
                            ? Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    title,
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.poppins(
                                      fontSize: AppSetting.setFontSize(titleFontSize),
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () => onReset != null ? onReset() : {},
                                    child: Text(
                                      "Reset",
                                      style: MyTheme.style.subtitle.copyWith(
                                        fontSize: AppSetting.setFontSize(33),
                                        color: MyTheme.color.primary,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            : Row(
                                children: [
                                  Conditional(
                                    condition: enableClose,
                                    child: InkWell(
                                      onTap: () => onClose != null ? onClose() : {},
                                      child: Icon(
                                        Icons.close,
                                        color: context.blackWhiteColor.withValues(alpha: 0.7),
                                      ),
                                    )
                                  ),
                                  Expanded(
                                    child: Text(
                                      title,
                                      textAlign: enableClose ? TextAlign.center : TextAlign.start,
                                      style: MyTheme.style.title.copyWith(
                                        fontSize: AppSetting.setFontSize(titleFontSize),
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                      : Align(
                          alignment: Alignment.topCenter,
                          child: InkWell(
                            onTap: () => onClose != null ? onClose() : {},
                            child: const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            ),
                          ),
                        ),
                  const SizedBox(
                    height: 10,
                  ),
                  customColumn ??
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: children!,
                      ),
                  SizedBox(
                    height: paddingBottom,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}