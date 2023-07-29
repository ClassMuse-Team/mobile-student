import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  final String text;
  const MySearchBar(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1, color: Colors.black12),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextField(
          focusNode: FocusNode(),
          keyboardType: TextInputType.text,
          onChanged: (text) {},
          decoration: InputDecoration(
            hintText: text,
            hintStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
            border: InputBorder.none,
            // prefixIcon: Padding(
            //   padding: const EdgeInsets.only(left: 12, right: 6, top: 4),
            //   child: Image.asset(
            //     "assets/icons/common/search/64/Search.png",
            //     width: 24,
            //     height: 24,
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
