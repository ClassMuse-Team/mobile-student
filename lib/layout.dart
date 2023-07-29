import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/screens/classroom_screen.dart';
import 'package:mobile_student/screens/etcs/error.dart';
import 'package:mobile_student/screens/feed_screen.dart';
import 'package:mobile_student/screens/home_screen.dart';
import 'package:mobile_student/screens/menu_screen.dart';
import 'package:mobile_student/screens/message_screen.dart';
import 'package:mobile_student/screens/login/login_screen.dart';
import 'package:mobile_student/screens/register/register_screen.dart';
import 'package:mobile_student/states/screen_management.dart';
import 'package:mobile_student/widgets/navigations_bar.dart';

class MyLayout extends ConsumerWidget {
  MyLayout({super.key});

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    ClassroomScreen(),
    FeedScreen(),
    MessageScreen(),
    MenuScreen()
  ];

  final _screenSelectedIndexProvider =
      StateNotifierProvider((ref) => ScreenSelectedIndex());
  final _isLoginedProvider = StateNotifierProvider((ref) => IsLogined());
  final _isRegisterModeProvider =
      StateNotifierProvider((ref) => IsRegisterMode());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSelectedIndex = ref.watch(_screenSelectedIndexProvider);
    final isLogined = ref.watch(_isLoginedProvider);
    final isRegisterMode = ref.watch(_isRegisterModeProvider);
    if (isLogined.toString() == "true") {
      return Scaffold(
        body: _screens.elementAt(int.parse(screenSelectedIndex.toString())),
        bottomNavigationBar: MyNavBar(),
      );
    } else if (isRegisterMode.toString() == "true") {
      return Scaffold(
        body: RegisterScreen(_isRegisterModeProvider),
      );
    } else if (isRegisterMode.toString() == "false") {
      return Scaffold(
        body: LoginScreen(_isRegisterModeProvider),
      );
    } else {
      return const Scaffold(
        body: ErrorScreen(),
      );
    }
  }
}
