// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';

class CustomTextField extends ConsumerWidget {
  const CustomTextField({
    Key? key,
    bool? isObscure,
    required this.title,
    required this.controller,
    required this.onChanged,
    required this.icon,
  })  : isObscure = isObscure ?? false,
        super(key: key);

  final String title;
  final TextEditingController controller;
  final void Function(String? value) onChanged;
  final IconData icon;
  final bool isObscure;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      child: TextField(
        controller: controller,
        obscureText: isObscure,

        onChanged: onChanged,

        /// text style
        style: ref.theme.font.body1.copyWith(
          fontWeight: FontWeight.bold,
        ),

        decoration: InputDecoration(
          /// icon
          prefixIcon: Icon(
            icon,
            color: ref.theme.color.primary,
          ),

          /// 레이블
          labelText: title,
          labelStyle: ref.theme.font.boldbody2.copyWith(
            color: ref.theme.color.onHintContainer,
          ),
          floatingLabelStyle: ref.theme.font.boldbody2,

          /// 힌트 문자
          hintText: title,
          hintStyle: ref.theme.font.hintBody12,

          /// 색
          fillColor: ref.theme.color.background,
          filled: true,
          isDense: true,
        ),
      ),
    );
  }
}
