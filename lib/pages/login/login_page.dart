import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';
import 'package:your_turn/pages/login/provider/login_textfield_provider.dart';
import 'package:your_turn/style/component/custom_text_button.dart';
import 'package:your_turn/style/component/custom_textfield.dart';
import 'package:your_turn/style/resources/button_size.dart';
import 'package:your_turn/style/resources/palette.dart';
import 'package:your_turn/util/lang/generated/l10n.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginTextfieldState = ref.watch(loginTextFieldProvider);
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          /// no overflow by keyboard at using textfield
          // resizeToAvoidBottomInset: false,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.all_inclusive,
                    color: ref.theme.color.text,
                    size: 100,
                  ),

                  /// text
                  Container(
                    margin: const EdgeInsets.all(30),
                    child: Text(
                      S.current.login,
                      style: ref.theme.font.headline2,
                    ),
                  ),

                  /// id text fiedl
                  CustomTextField(
                    icon: Icons.account_box_rounded,
                    title: S.current.id,
                    controller: loginTextfieldState.idController,
                    onChanged: (value) {},
                  ),

                  /// password text field
                  CustomTextField(
                    icon: Icons.lock,
                    title: S.current.passowrd,
                    controller: loginTextfieldState.pwController,
                    onChanged: (value) {},
                    isObscure: true,
                  ),

                  /// space
                  const SizedBox(height: 20),

                  /// login button
                  CustomTextButton(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    height: ButtonSize.medium,
                    width: ButtonSize.infinity,
                    title: S.current.login,
                    fontSize: 20,
                    onPressed: () async {
                      await FirebaseAuth.instance.signInWithEmailAndPassword(
                        email: loginTextfieldState.idController.text.trim(),
                        password: loginTextfieldState.pwController.text.trim(),
                      );
                    },
                  ),

                  /// sigh up text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        S.current.not_a_member,
                        style: ref.theme.font.boldbody1,
                      ),
                      Text(
                        S.current.register_now,
                        style: ref.theme.font.boldbody1.copyWith(
                          color: Palette.primary,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
