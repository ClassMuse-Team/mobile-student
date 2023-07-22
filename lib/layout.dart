import 'package:flutter/material.dart';
import 'package:mobile_student/screens/classroom_screen.dart';

class MyLayout extends StatefulWidget {
  const MyLayout({
    super.key,
  });

  @override
  State<MyLayout> createState() => _LayoutState();
}

class _LayoutState extends State<MyLayout> {
  int _selectedIndex = 0;

  static const List<Widget> _screens = <Widget>[
    HomeScreen(),
    Text('Classroom'),
    Text('Search'),
    Text('Feed'),
    Text('Menu'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: _screens.elementAt(_selectedIndex),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black12, width: 1),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 6.0),
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
                    height: 32,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 0
                          ? "assets/icons/common/navbar/64/HomeTapped.png"
                          : "assets/icons/common/navbar/64/Home.png",
                      width: 32,
                      height: 32,
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
                    height: 32,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 1
                          ? "assets/icons/common/navbar/64/MortarboardTapped.png"
                          : "assets/icons/common/navbar/64/Mortarboard.png",
                      width: 32,
                      height: 32,
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
                    height: 32,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 2
                          ? "assets/icons/common/navbar/64/DocumentTapped.png"
                          : "assets/icons/common/navbar/64/Document.png",
                      width: 32,
                      height: 32,
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
                    height: 32,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 3
                          ? "assets/icons/common/navbar/64/MessageTapped.png"
                          : "assets/icons/common/navbar/64/Message.png",
                      width: 32,
                      height: 32,
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
                    height: 32,
                    alignment: Alignment.center,
                    child: Image.asset(
                      _selectedIndex == 4
                          ? "assets/icons/common/navbar/64/MenuTapped.png"
                          : "assets/icons/common/navbar/64/Menu.png",
                      width: 32,
                      height: 32,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
