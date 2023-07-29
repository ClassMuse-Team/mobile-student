import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/screens/classroom_screen.dart';
import 'package:mobile_student/screens/feed_screen.dart';
import 'package:mobile_student/screens/home_screen.dart';
import 'package:mobile_student/screens/menu_screen.dart';
import 'package:mobile_student/screens/message_screen.dart';
import 'package:mobile_student/screens/login/login_screen.dart';

class LastLayout extends StatelessWidget {
  LastLayout({
    super.key,
  });

  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    ClassroomScreen(),
    FeedScreen(),
    MessageScreen(),
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    if (true) {
      return Scaffold(
        // appBar: AppBar(),
        body: _screens.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black12, width: 1),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () => {_selectedIndex = 0},
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 0
                          ? "assets/icons/common/navbar/HomeTapped.png"
                          : "assets/icons/common/navbar/Home.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {_selectedIndex = 1},
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 1
                          ? "assets/icons/common/navbar/MortarboardTapped.png"
                          : "assets/icons/common/navbar/Mortarboard.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {_selectedIndex = 2},
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 2
                          ? "assets/icons/common/navbar/DocumentTapped.png"
                          : "assets/icons/common/navbar/Document.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {_selectedIndex = 3},
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 3
                          ? "assets/icons/common/navbar/MessageTapped.png"
                          : "assets/icons/common/navbar/Message.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {_selectedIndex = 4},
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 4
                          ? "assets/icons/common/navbar/MenuTapped.png"
                          : "assets/icons/common/navbar/Menu.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return const Scaffold(
        body: LoginScreen(),
      );
    }
  }
}
