import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/widget_manager/_input_box.dart';
import 'package:mobile_student/widgets/input_box.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({super.key});
  final inputValueProvider = StateNotifierProvider((ref) => InputValue());

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          // InputBox(inputValueProvider: inputValueProvider, hint: "친구 검색하기"),
        ],
      ),
    );
  }
}
