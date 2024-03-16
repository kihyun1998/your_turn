import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/provider/theme_provider.dart';
import 'package:your_turn/style/foundation/app_theme.dart';

extension ThemeServiceExt on WidgetRef {
  AppTheme get theme => watch(themeProvider);
  AppColor get color => theme.color;
  AppFont? get font => theme.font;
  ThemeData get themeData {
    return ThemeData(
        // 주색상 설정
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: theme.color.primary,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: theme.color.background,
          titleTextStyle: theme.font.headline1,
        ),
        scaffoldBackgroundColor: theme.color.surface,
        tabBarTheme: TabBarTheme(
          dividerColor: theme.color.surface,
          dividerHeight: 3,
        ),
        dialogBackgroundColor: theme.color.surface,
        dialogTheme: const DialogTheme(
          surfaceTintColor: Colors.transparent,
        ),
        unselectedWidgetColor: theme.color.background,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(theme.color.bar),
          thickness: MaterialStateProperty.all(6),
          radius: const Radius.circular(3),
        )
        // drawerTheme: DrawerThemeData(
        //   backgroundColor: theme.color.primary,
        //   elevation: 0,
        // ),
        );
  }
}
