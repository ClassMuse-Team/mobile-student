import 'package:flutter/material.dart';
import 'package:mobile_student/widgets/search_bar.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          MySearchBar("친구 검색하기"),
        ],
      ),
    );
  }
}
