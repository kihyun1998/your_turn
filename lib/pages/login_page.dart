import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:your_turn/extensions/themedata_ext.dart';
import 'package:your_turn/style/component/custom_text_button.dart';
import 'package:your_turn/style/component/custom_textfield.dart';
import 'package:your_turn/style/resources/button_size.dart';
import 'package:your_turn/style/resources/palette.dart';

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
                  "로그인",
                  style: ref.theme.font.headline2,
                ),
              ),

              /// id text fiedl
              CustomTextField(
                icon: Icons.account_box_rounded,
                title: "아이디",
                controller: idController,
                onChanged: (value) {},
              ),

              /// password text field
              CustomTextField(
                icon: Icons.lock,
                title: "비밀번호",
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
                title: "로그인",
                fontSize: 20,
                onPressed: () {},
              ),

              /// sigh up text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "회원이 아니신가요? ",
                    style: ref.theme.font.boldbody1,
                  ),
                  Text(
                    "지금 등록 하기",
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
