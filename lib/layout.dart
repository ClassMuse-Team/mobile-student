import 'package:flutter/material.dart';
import 'package:mobile_student/main.dart';
// screens
import 'package:mobile_student/screens/main/classroom_screen.dart';
import 'package:mobile_student/screens/etcs/error.dart';
import 'package:mobile_student/screens/main/feed_screen.dart';
import 'package:mobile_student/screens/main/home_screen.dart';
import 'package:mobile_student/screens/main/menu_screen.dart';
import 'package:mobile_student/screens/main/message_screen.dart';
import 'package:mobile_student/screens/sign/layout.dart';
// widgets
import 'package:mobile_student/widgets/navigations_bar.dart';
// riverpod files
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/layout_manager/_main.dart';

class MainLayout extends ConsumerWidget {
  MainLayout({super.key});

  final screenSelectedIndexProvider =
      StateNotifierProvider((ref) => ScreenSelectedIndex());
  final isLoginedProvider = StateNotifierProvider((ref) => IsLogined());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> screens = <Widget>[
      const HomeScreen(),
      ClassroomScreen(),
      FeedScreen(),
      MessageScreen(),
      const MenuScreen()
    ];
    final screenSelectedIndex = ref.watch(screenSelectedIndexProvider);
    final isLogined = ref.watch(isLoginedProvider);
    if (isLogined.toString() == "true") {
      return Scaffold(
        body: screens.elementAt(int.parse(screenSelectedIndex.toString())),
        // body: FutureBuilder<List<Map<String, dynamic>>>(
        //   future: _future,
        //   builder: (context, snapshot) {
        //     if (!snapshot.hasData) {
        //       return const Center(child: CircularProgressIndicator());
        //     }
        //     final classes = snapshot.data!;
        //     debugPrint("$classes");
        //     return ListView.builder(
        //       itemCount: classes.length,
        //       itemBuilder: ((context, index) {
        //         final className = classes[index];
        //         return Column(
        //           children: [
        //             Text(className['name']),
        //             Text(className['description']),
        //             const SizedBox(height: 40),
        //           ],
        //         );
        //       }),
        //     );
        //   },
        // ),
        bottomNavigationBar:
            NavBar(screenSelectedIndexProvider: screenSelectedIndexProvider),
      );
    } else if (isLogined.toString() == "false") {
      return Scaffold(
        body: SignLayout(isLoginedProvider: isLoginedProvider),
      );
    } else {
      return const Scaffold(
        body: ErrorScreen(),
      );
    }
  }
}
