import 'package:flutter/material.dart';
import 'package:mobile_student/widgets/search_bar.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text("예기치 못한 에러가 발생했습니다."),
          Text("앱을 다시시작해주세요."),
        ],
      ),
    );
  }
}
