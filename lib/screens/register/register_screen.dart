import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/states/screen_management.dart';
import 'package:mobile_student/widgets/main_sign_button.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen(
    this._isRegisterModeProvider, {
    super.key,
  });

  final StateNotifierProvider<IsRegisterMode, Object?> _isRegisterModeProvider;

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
              "클래스뮤즈의 회원가입을 진심으로 환영합니다!",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "계속하기 위해서는 다음중 하나를 선택해야합니다.",
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
            MainSignButton(
              icon: "assets/icons/common/social/Google.png",
              title: "구글로 회원가입",
              bgColor: const Color.fromARGB(255, 225, 225, 225),
              // bgColor: Colors.black54,
              textColor: Colors.black,
              onPressed: () {},
            ),
            const SizedBox(
              height: 6,
            ),
            MainSignButton(
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
            MainSignButton(
              icon: "assets/icons/common/social/Discord.png",
              title: "디스코드로 회원가입",
              bgColor: const Color(0xff5865F2),
              // bgColor: const Color.fromARGB(255, 125, 134, 239),
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
                  ref.watch(_isRegisterModeProvider.notifier).setValue(false),
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
