import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mobile_student/riverpod/widget_manager/_basic_widgets.dart';
import 'package:mobile_student/riverpod/widget_manager/_input_box.dart';

class InputBox extends ConsumerWidget {
  const InputBox({
    required this.inputValueProvider,
    required this.visibilityProvider,
    this.hint = '',
    this.errorText = '',
    this.textAlign = TextAlign.left,
    this.focusedBorderColor = Colors.black87,
    this.borderColor = Colors.black12,
    this.width = 240,
    super.key,
  });

  // final inputValueProvider = StateNotifierProvider((ref) => InputValue());
  final StateNotifierProvider<InputValue, Object?> inputValueProvider;
  final StateNotifierProvider<VisibilityProvider, Object?> visibilityProvider;

  final String hint;
  final String errorText;
  final TextAlign textAlign;
  final int width;
  final Color focusedBorderColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Container(
        width: double.parse(width.toString()),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
        decoration: const BoxDecoration(
            // border: Border(
            //   bottom: BorderSide(width: 1, color: borderColor),
            // ),
            ),
        child: Column(
          children: [
            TextField(
              focusNode: FocusNode(),
              keyboardType: TextInputType.text,
              textAlign: textAlign,
              onChanged: (text) =>
                  ref.watch(inputValueProvider.notifier).setValue(text),
              decoration: InputDecoration(
                hintText: hint,
                hintStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: borderColor),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: focusedBorderColor),
                ),

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
            Visibility(
              visible: ref.watch(visibilityProvider).toString() == 'true',
              child: Text(
                errorText,
                style: const TextStyle(color: Colors.redAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
