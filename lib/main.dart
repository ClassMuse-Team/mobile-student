import 'package:flutter/material.dart';
import 'package:mobile_student/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ClassMuse - 학생용',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyLayout(),
    );
  }
}

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
                          ? "assets/icons/common/navbar/64/SearchTapped.png"
                          : "assets/icons/common/navbar/64/Search.png",
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
                          ? "assets/icons/common/navbar/64/Document.png"
                          : "assets/icons/common/navbar/64/Document.png",
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

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title = '',
    this.leading,
    this.titleWidget,
  });

  final String title;
  final Widget? leading;
  final Widget? titleWidget;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
