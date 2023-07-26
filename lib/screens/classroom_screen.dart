import 'package:flutter/material.dart';
import 'package:mobile_student/widgets/search_bar.dart';

class ClassroomScreen extends StatelessWidget {
  const ClassroomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          MySearchBar("반에서 검색하기"),
        ],
      ),
    );
  }
}
