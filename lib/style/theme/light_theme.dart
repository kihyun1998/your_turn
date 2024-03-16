import 'package:your_turn/style/foundation/app_theme.dart';
import 'package:your_turn/style/resources/font.dart';
import 'package:your_turn/style/resources/palette.dart';

class LightTheme implements AppTheme {
  @override
  AppMode mode = AppMode.light;

  @override
  AppColor color = AppColor(
    surface: Palette.grey150,
    background: Palette.white,
    text: Palette.grey750,
    hint: Palette.grey500,
    hintContainer: Palette.grey150,
    onHintContainer: Palette.grey500,
    inactive: Palette.grey300,
    inactiveContainer: Palette.grey300,
    onInactiveContainer: Palette.grey200,
    primary: Palette.primary,
    onPrimary: Palette.white,
    selectedIconColor: Palette.grey800,
    unSelectedIconColor: Palette.grey400,
    bar: Palette.grey400,
    titlebarButtonHover: Palette.grey600,
    titlebarButtonSplash: Palette.grey600.withOpacity(0.5),
    hoverColor: Palette.grey275,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
