import 'package:flutter/material.dart';

abstract class Palette {
  /// Chromatic color (유채색)
  static const Color primary = Color(0xFF9966CC);
  static const Color primaryHover = Color(0xFFB39DDC);
  static const Color primarySplash = Color(0xFF663399);
  static const Color onPrimary = Colors.white;
  static Color navy = const Color.fromARGB(255, 2, 27, 58);
  static Color red = const Color(0xFFFB432F);
  static Color green = const Color(0xFF5AC463);
  static Color grey = const Color(0xFF707070);
  static Color purple = const Color(0xFFCB81DA);

  /// Achromatic color (무채색)
  static Color white = const Color(0xFFFFFFFF);
  static Color grey100 = const Color(0xFFFAFAFA);
  static Color grey150 = const Color(0xFFF5F5F5);
  static Color grey200 = const Color(0xFFEFEFEF);
  static Color grey250 = const Color(0xFFE8E8E8);
  static Color grey275 = const Color(0xFFE0E0E0);
  static Color grey300 = const Color(0xFFDFDFDF);
  static Color grey325 = const Color(0xFFCCCCCC);
  static Color grey350 = const Color(0xFFC8C8C8);
  static Color grey400 = const Color(0xFFB7B7B7);
  static Color grey500 = const Color(0xFF949494);
  static Color grey550 = const Color(0xFF6E7179);
  static Color grey600 = const Color(0xFF777777);
  static Color grey650 = const Color(0xFF616161);
  static Color grey700 = const Color(0xFF555555);
  static Color grey750 = const Color(0xFF3E3E3E);
  static Color grey770 = const Color(0xFF383838);
  static Color grey800 = const Color(0xFF2A2A2A);
  static Color grey850 = const Color(0xFF1F1F1F);
  static Color grey870 = const Color(0xFF1A1A1A);
  static Color grey900 = const Color(0xFF111111);
  static Color black = const Color(0xFF000000);

  static Color ivorySurface = const Color(0xFFF8F5ED);
  static Color ivoryBackground = const Color(0xFFE8E3D5);
  static Color ivoryPrimary = const Color(0xFFC7BCA6);

  /// one dark theme
  static Color oneDarkBackground = const Color(0xFF282C34);
  static Color oneDarkSurface = const Color(0xFF2D323B);
  static Color oneDarkHintContainer = const Color(0xFF21252B);
  static Color oneDarkOnHintContainer = const Color(0xFF717274);
  static Color oneDarkText = const Color(0xFFABACAD);
  static Color oneDarkSelectIcon = const Color(0xFFD7DAE0);
  static Color oneDarkIcon = const Color(0xFF6B717D);
  static Color oneDarkBar = const Color(0xFF3B4048);
  static Color oneDarkSurfaceHover = const Color(0xFF3A4049);

  /// login page colors
  static Color loginTextFieldFillColor = const Color(0xFF165EAB);
  static Color loginButtonColor = const Color(0xFF32344E);
  static Color loginButtonHoverColor = const Color(0xFF3B3E5B);
  static Color loginButtonSplashColor = const Color(0xFF4B4E6B);
  static Color loginIconColor = const Color(0xFF0D3F7D);
  static Color loginTextColor = const Color(0xFF468BCD);
  static Color loginSelectColor = const Color(0xFFE0E4E7);
  static Color acraLogoColor = const Color(0xFFFFFFFF);
}
