import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/states/screen_management.dart';

class MyNavBar extends ConsumerWidget {
  MyNavBar({super.key});
  final _screenSelectedIndexProvider =
      StateNotifierProvider((ref) => ScreenSelectedIndex());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSelectedIndex = ref.watch(_screenSelectedIndexProvider);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: () =>
                ref.watch(_screenSelectedIndexProvider.notifier).setValue(0),
            child: Container(
              height: 28,
              alignment: Alignment.center,
              child: Image.asset(
                screenSelectedIndex == 0
                    ? "assets/icons/common/navbar/HomeTapped.png"
                    : "assets/icons/common/navbar/Home.png",
                width: 28,
                height: 28,
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                ref.watch(_screenSelectedIndexProvider.notifier).setValue(1),
            child: Container(
              height: 28,
              alignment: Alignment.center,
              child: Image.asset(
                screenSelectedIndex == 1
                    ? "assets/icons/common/navbar/MortarboardTapped.png"
                    : "assets/icons/common/navbar/Mortarboard.png",
                width: 28,
                height: 28,
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                ref.watch(_screenSelectedIndexProvider.notifier).setValue(2),
            child: Container(
              height: 28,
              alignment: Alignment.center,
              child: Image.asset(
                screenSelectedIndex == 2
                    ? "assets/icons/common/navbar/DocumentTapped.png"
                    : "assets/icons/common/navbar/Document.png",
                width: 28,
                height: 28,
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                ref.watch(_screenSelectedIndexProvider.notifier).setValue(3),
            child: Container(
              height: 28,
              alignment: Alignment.center,
              child: Image.asset(
                screenSelectedIndex == 3
                    ? "assets/icons/common/navbar/MessageTapped.png"
                    : "assets/icons/common/navbar/Message.png",
                width: 28,
                height: 28,
              ),
            ),
          ),
          TextButton(
            onPressed: () =>
                ref.watch(_screenSelectedIndexProvider.notifier).setValue(4),
            child: Container(
              height: 28,
              alignment: Alignment.center,
              child: Image.asset(
                screenSelectedIndex == 4
                    ? "assets/icons/common/navbar/MenuTapped.png"
                    : "assets/icons/common/navbar/Menu.png",
                width: 28,
                height: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
