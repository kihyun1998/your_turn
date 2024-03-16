// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';
import 'package:your_turn/style/component/custom_button.dart';
import 'package:your_turn/style/resources/button_size.dart';
import 'package:your_turn/style/resources/palette.dart';

class CustomTextButton extends ConsumerWidget {
  const CustomTextButton({
    super.key,
    ButtonSize? width,
    ButtonSize? height,
    double? fontSize,
    bool? isDisabled,
    Color? backgroundColor,
    Color? hoverColor,
    Color? splashColor,
    required this.margin,
    required this.title,
    required this.onPressed,
  })  : width = width ?? ButtonSize.small,
        height = height ?? ButtonSize.small,
        fontSize = fontSize ?? 12,
        isDisabled = isDisabled ?? false,
        backgroundColor = backgroundColor ?? Palette.primary,
        hoverColor = hoverColor ?? Palette.primaryHover,
        splashColor = splashColor ?? Palette.primarySplash;

  final ButtonSize width;
  final ButtonSize height;
  final EdgeInsetsGeometry? margin;
  final double fontSize;
  final bool isDisabled;
  final String title;
  final Color backgroundColor;
  final Color hoverColor;
  final Color splashColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      /// 호버, 클릭 색상 변경
      hoverColor: hoverColor,
      splashColor: splashColor,

      /// 사이즈
      width: width,
      height: height,

      /// 마진
      margin: margin,

      /// 활성화 여부
      isDisabled: isDisabled,

      color: backgroundColor,
      onPressed: onPressed,
      child: Center(
        child: Text(
          title,
          style: ref.theme.font.body2.copyWith(
            color: isDisabled
                ? ref.theme.color.onInactiveContainer
                : ref.theme.color.onPrimary,
            fontWeight: FontWeight.w600,
            fontSize: fontSize,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
