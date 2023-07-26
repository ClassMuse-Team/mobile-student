import 'package:flutter/material.dart';
import 'package:mobile_student/widgets/search_bar.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          MySearchBar("게시물 검색하기"),
        ],
      ),
    );
  }
}
