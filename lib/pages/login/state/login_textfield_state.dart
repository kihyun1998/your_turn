// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LoginTextfieldState {
  TextEditingController idController;
  TextEditingController pwController;
  LoginTextfieldState({
    required this.idController,
    required this.pwController,
  });

  factory LoginTextfieldState.init() => LoginTextfieldState(
        idController: TextEditingController(),
        pwController: TextEditingController(),
      );

  void disposeAll() {
    idController.dispose();
    pwController.dispose();
  }
}
