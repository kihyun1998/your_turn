import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_turn/style/foundation/app_theme.dart';
import 'package:your_turn/style/theme/dart_theme.dart';
import 'package:your_turn/style/theme/light_theme.dart';

part 'theme_provider.g.dart';

@riverpod
class Theme extends _$Theme {
  @override
  AppTheme build() {
    return LightTheme();
  }

  void toggleTheme() {
    state = state.mode == AppMode.light ? DarkTheme() : LightTheme();
  }
}
