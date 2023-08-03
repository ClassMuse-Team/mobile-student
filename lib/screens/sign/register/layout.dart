import 'package:flutter/material.dart';
import 'package:mobile_student/riverpod/layout_manager/_register.dart';
import 'package:mobile_student/riverpod/layout_manager/_sign.dart';
// screens

// riverpod files
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';
import 'package:mobile_student/screens/sign/register/beta_code_screen.dart';
import 'package:mobile_student/screens/sign/register/register_screen.dart';

class RegisterLayout extends ConsumerWidget {
  RegisterLayout({
    super.key,
    required this.isLoginedProvider,
    required this.isRegisterModeProvider,
  });

  final StateNotifierProvider<IsLogined, Object?> isLoginedProvider;
  final StateNotifierProvider<IsRegisterMode, Object?> isRegisterModeProvider;
  final registerscreenIndexProvider =
      StateNotifierProvider((ref) => RegisterScreenIndex());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> screens = <Widget>[
      RegisterScreen(
        isLoginedProvider: isLoginedProvider,
        isRegisterModeProvider: isRegisterModeProvider,
        registerscreenIndexProvider: registerscreenIndexProvider,
      ),
      BetaCodeScreen(
        isLoginedProvider: isLoginedProvider,
        isRegisterModeProvider: isRegisterModeProvider,
        registerscreenIndexProvider: registerscreenIndexProvider,
      ),
    ];
    final registerScreenIndex = ref.watch(registerscreenIndexProvider);
    return Scaffold(
      body: screens.elementAt(int.parse(registerScreenIndex.toString())),
    );
  }
}
