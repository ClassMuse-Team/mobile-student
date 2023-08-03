import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';
import 'package:mobile_student/riverpod/layout_manager/_sign.dart';
import 'package:mobile_student/screens/etcs/error.dart';
import 'package:mobile_student/screens/sign/login/login_screen.dart';
import 'package:mobile_student/screens/sign/register/layout.dart';

class SignLayout extends ConsumerWidget {
  SignLayout({
    super.key,
    required this.isLoginedProvider,
  });

  final StateNotifierProvider<IsLogined, Object?> isLoginedProvider;
  final isRegisterModeProvider =
      StateNotifierProvider((ref) => IsRegisterMode());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRegisterMode = ref.watch(isRegisterModeProvider);
    if (isRegisterMode.toString() == "true") {
      return RegisterLayout(
        isLoginedProvider: isLoginedProvider,
        isRegisterModeProvider: isRegisterModeProvider,
      );
    } else if (isRegisterMode.toString() == "false") {
      return LoginScreen(
        isLoginedProvider: isLoginedProvider,
        isRegisterModeProvider: isRegisterModeProvider,
      );
    } else {
      return const ErrorScreen();
    }
  }
}
