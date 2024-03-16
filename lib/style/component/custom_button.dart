import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';
import 'package:your_turn/style/resources/button_size.dart';

class CustomButton extends ConsumerWidget {
  const CustomButton({
    super.key,
    required this.width,
    required this.height,
    required this.margin,
    required this.isDisabled,
    required this.color,
    required this.hoverColor,
    required this.splashColor,
    required this.onPressed,
    required this.child,
  });

  final ButtonSize width;
  final ButtonSize height;
  // final ButtonPadding margin;
  final bool isDisabled;
  final Color color;
  final Color hoverColor;
  final Color splashColor;
  final VoidCallback onPressed;
  final Widget child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MouseRegion(
      cursor:
          isDisabled ? SystemMouseCursors.forbidden : SystemMouseCursors.click,
      child: IgnorePointer(
        ignoring: isDisabled,
        child: Container(
          width: width.getSize(),
          height: height.getSize(),
          margin: margin,
          decoration: BoxDecoration(
            /// isDisabled 시 색 조정
            color: isDisabled ? ref.theme.color.inactive : color,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              hoverColor: hoverColor,
              splashColor: splashColor,
              hoverDuration: const Duration(microseconds: 100),

              /// 버튼이 Disalbed라면 null 반환
              onTap: isDisabled ? null : onPressed,
              borderRadius: BorderRadius.circular(10),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
