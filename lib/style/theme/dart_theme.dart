import 'package:your_turn/style/foundation/app_theme.dart';
import 'package:your_turn/style/resources/font.dart';
import 'package:your_turn/style/resources/palette.dart';

class DarkTheme implements AppTheme {
  @override
  AppMode mode = AppMode.dark;

  @override
  AppColor color = AppColor(
    surface: Palette.oneDarkSurface,
    background: Palette.oneDarkBackground,
    text: Palette.oneDarkText,
    hint: Palette.grey500,
    hintContainer: Palette.oneDarkHintContainer,
    onHintContainer: Palette.oneDarkOnHintContainer,
    inactive: Palette.grey500,
    inactiveContainer: Palette.grey600,
    onInactiveContainer: Palette.grey400,
    primary: Palette.primary,
    onPrimary: Palette.white,
    selectedIconColor: Palette.oneDarkSelectIcon,
    unSelectedIconColor: Palette.oneDarkIcon,
    bar: Palette.oneDarkBar,
    titlebarButtonHover: Palette.grey600,
    titlebarButtonSplash: Palette.grey600.withOpacity(0.5),
    hoverColor: Palette.oneDarkSurfaceHover,
  );

  @override
  late AppFont font = AppFont(
    font: const NotoSans(),
    fontColor: color.text,
    hintColor: color.hint,
  );
}
