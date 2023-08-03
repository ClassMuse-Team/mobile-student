import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';
import 'package:mobile_student/riverpod/layout_manager/_register.dart';
import 'package:mobile_student/riverpod/layout_manager/_sign.dart';
import 'package:mobile_student/riverpod/widget_manager/_basic_widgets.dart';
import 'package:mobile_student/riverpod/widget_manager/_input_box.dart';
import 'package:mobile_student/widgets/input_box.dart';
import 'package:mobile_student/widgets/sign_btn/sign_btn_gradient.dart';

class BetaCodeScreen extends ConsumerWidget {
  BetaCodeScreen({
    super.key,
    required this.isLoginedProvider,
    required this.isRegisterModeProvider,
    required this.registerscreenIndexProvider,
  });

  final StateNotifierProvider<IsLogined, Object?> isLoginedProvider;
  final StateNotifierProvider<IsRegisterMode, Object?> isRegisterModeProvider;
  final StateNotifierProvider<RegisterScreenIndex, Object?>
      registerscreenIndexProvider;
  final inputValueProvider = StateNotifierProvider((ref) => InputValue());
  final visibilityProvider =
      StateNotifierProvider((ref) => VisibilityProvider());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final inputValue = ref.watch(inputValueProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/logos/TextLogo128.png",
              height: 48,
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
              "베타테스트에 참가해주셔서 감사합니다",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "발급받은 코드를 입력해주세요.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            InputBox(
              inputValueProvider: inputValueProvider,
              visibilityProvider: visibilityProvider,
              hint: "대소문자에 주의하여 입력",
              errorText: "코드가 알맞지 않습니다.",
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 8,
            ),
            GradientSignButton(
              title: "입력을 완료했습니다.",
              // bgColor: const Color(0xFFFBE300),
              gradientColorStart: const Color(0xffd250cb),
              gradientColorEnd: const Color(0xff2975e2),
              textColor: Colors.white,
              onPressed: () {
                if (inputValue == dotenv.env['BETA_CODE']) {
                  ref.watch(isLoginedProvider.notifier).setValue(true);
                } else {
                  ref.watch(visibilityProvider.notifier).setValue(true);
                }
              },
            ),
            Container(
              height: 32,
              width: 320,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black38,
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            InkWell(
              onTap: () =>
                  ref.watch(registerscreenIndexProvider.notifier).setValue(0),
              child: const Text(
                "회원가입으로 돌아가기",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
