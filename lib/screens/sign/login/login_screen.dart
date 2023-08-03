import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';
import 'package:mobile_student/riverpod/layout_manager/_sign.dart';
import 'package:mobile_student/widgets/sign_btn/sign_btn.dart';
import 'package:mobile_student/widgets/sign_btn/sign_btn_gradient.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({
    super.key,
    required this.isLoginedProvider,
    required this.isRegisterModeProvider,
  });
  final StateNotifierProvider<IsLogined, Object?> isLoginedProvider;
  final StateNotifierProvider<IsRegisterMode, Object?> isRegisterModeProvider;

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
              "클래스뮤즈에 오신것을 환영합니다!",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "계속하기 위해서는 로그인이 필요합니다.",
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
              title: "구글로 로그인",
              bgColor: const Color.fromARGB(255, 225, 225, 225),
              // bgColor: Colors.black54,
              textColor: Colors.black,
              onPressed: () {},
            ),
            const SizedBox(
              height: 6,
            ),
            SignButton(
              icon: "assets/icons/common/social/KakaoTalk.png",
              title: "카카오톡으로 로그인",
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
              title: "베타테스트 계정으로 로그인",
              // bgColor: const Color(0xFFFBE300),
              gradientColorStart: const Color(0xffd250cb),
              gradientColorEnd: const Color(0xff2975e2),
              textColor: Colors.white,
              onPressed: () {},
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
                  ref.watch(isRegisterModeProvider.notifier).setValue(true),
              child: const Text(
                "아직 계정이 없나요? 회원가입하세요!",
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
