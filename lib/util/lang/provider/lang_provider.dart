import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'lang_provider.g.dart';

@riverpod
class Lang extends _$Lang {
  @override
  Locale build() {
    return LangState.en;
  }

  void toggleLanguage() {
    state = LangState.isKo ? LangState.en : LangState.ko;
  }
}

abstract class LangState {
  static const Locale en = Locale('en');
  static const Locale ko = Locale('ko');

  static bool get isKo => Intl.getCurrentLocale() == ko.languageCode;
}
