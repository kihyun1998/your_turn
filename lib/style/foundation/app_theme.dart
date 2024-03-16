import 'package:flutter/material.dart';
import 'package:your_turn/style/resources/font.dart';

part 'app_color.dart';
part 'app_font.dart';
part 'app_mode.dart';

abstract class AppTheme {
  late final AppMode mode;
  late final AppColor color;
  late final AppFont font;
}
