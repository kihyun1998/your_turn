import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';
import 'package:your_turn/style/component/custom_text_button.dart';
import 'package:your_turn/style/component/custom_textfield.dart';
import 'package:your_turn/style/resources/button_size.dart';
import 'package:your_turn/style/resources/palette.dart';
import 'package:your_turn/util/lang/generated/l10n.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TextEditingController idController = TextEditingController();
    final TextEditingController pwController = TextEditingController();
    return Scaffold(
      body: SafeArea(
        child: Center(
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
                controller: idController,
                onChanged: (value) {},
              ),

              /// password text field
              CustomTextField(
                icon: Icons.lock,
                title: S.current.passowrd,
                controller: pwController,
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
                onPressed: () {},
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
    );
  }
}
