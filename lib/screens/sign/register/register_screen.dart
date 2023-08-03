import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';
import 'package:mobile_student/riverpod/layout_manager/_register.dart';
import 'package:mobile_student/riverpod/layout_manager/_sign.dart';
import 'package:mobile_student/screens/sign/register/beta_code_screen.dart';
import 'package:mobile_student/widgets/sign_btn/sign_btn.dart';
import 'package:mobile_student/widgets/sign_btn/sign_btn_gradient.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({
    super.key,
    required this.isLoginedProvider,
    required this.isRegisterModeProvider,
    required this.registerscreenIndexProvider,
  });

  final StateNotifierProvider<IsLogined, Object?> isLoginedProvider;
  final StateNotifierProvider<IsRegisterMode, Object?> isRegisterModeProvider;
  final StateNotifierProvider<RegisterScreenIndex, Object?>
      registerscreenIndexProvider;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              "클래스뮤즈와 함께하는 즐거운 수업시간!",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "다음중 하나를 선택해 계속해주세요.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Container(
              height: 48,
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
            const Text(
              "다음으로 계속",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SignButton(
              icon: "assets/icons/common/social/Google.png",
              title: "구글로 회원가입",
              bgColor: const Color(0xffFFFFFF),
              // bgColor: Colors.black54,
              textColor: Colors.black,
              onPressed: () {},
            ),
            const SizedBox(
              height: 6,
            ),
            SignButton(
              icon: "assets/icons/common/social/KakaoTalk.png",
              title: "카카오톡으로 회원가입",
              // bgColor: const Color(0xFFFBE300),
              bgColor: const Color(0xffFFCA28),
              textColor: Colors.black,
              onPressed: () {},
            ),
            const SizedBox(
              height: 6,
            ),
            GradientSignButton(
              icon: "assets/logos/IconLogoWhite.png",
              title: "베타테스트 코드 입력",
              // bgColor: const Color(0xFFFBE300),
              gradientColorStart: const Color(0xffd250cb),
              gradientColorEnd: const Color(0xff2975e2),
              textColor: Colors.white,
              onPressed: () =>
                  ref.watch(registerscreenIndexProvider.notifier).setValue(1),
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
                  ref.watch(isRegisterModeProvider.notifier).setValue(false),
              child: const Text(
                "이미 계정이 있으신가요? 로그인해주세요!",
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
