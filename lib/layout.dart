import 'package:flutter/material.dart';
import 'package:mobile_student/screens/classroom_screen.dart';
import 'package:mobile_student/screens/feed_screen.dart';
import 'package:mobile_student/screens/home_screen.dart';
import 'package:mobile_student/screens/menu_screen.dart';
import 'package:mobile_student/screens/message_screen.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({
    super.key,
    this.isLogined = false,
  });
  final bool isLogined;

  @override
  State<MyLayout> createState() => _LayoutState();
}

class _LayoutState extends State<MyLayout> {
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
    if (widget.isLogined) {
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
                  onPressed: () => {
                    setState(() {
                      _selectedIndex = 0;
                    })
                  },
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 0
                          ? "assets/icons/common/navbar/64/HomeTapped.png"
                          : "assets/icons/common/navbar/64/Home.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    setState(() {
                      _selectedIndex = 1;
                    })
                  },
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 1
                          ? "assets/icons/common/navbar/64/MortarboardTapped.png"
                          : "assets/icons/common/navbar/64/Mortarboard.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    setState(() {
                      _selectedIndex = 2;
                    })
                  },
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 2
                          ? "assets/icons/common/navbar/64/DocumentTapped.png"
                          : "assets/icons/common/navbar/64/Document.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    setState(() {
                      _selectedIndex = 3;
                    })
                  },
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 3
                          ? "assets/icons/common/navbar/64/MessageTapped.png"
                          : "assets/icons/common/navbar/64/Message.png",
                      width: 28,
                      height: 28,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => {
                    setState(() {
                      _selectedIndex = 4;
                    })
                  },
                  child: Container(
                    height: 28,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 4
                          ? "assets/icons/common/navbar/64/MenuTapped.png"
                          : "assets/icons/common/navbar/64/Menu.png",
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [],
              ),
              Text(
                "클래스뮤즈에 오신것을 환영합니다!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
