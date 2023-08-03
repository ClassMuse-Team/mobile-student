import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  const SignButton({
    super.key,
    required this.icon,
    required this.title,
    required this.bgColor,
    required this.textColor,
    required this.onPressed,
  });

  final String icon;
  final String title;
  final Color bgColor;
  final Color textColor;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onTap: onPressed,
      child: Ink(
        height: 48,
        width: 300,
        decoration: BoxDecoration(
          color: bgColor,
          border: Border.all(color: Colors.black54, width: 1),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 32,
              width: 48,
              padding: const EdgeInsets.only(left: 2.4),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(width: 1, color: textColor),
                ),
              ),
              child: Image.asset(
                icon,
                height: 24,
              ),
            ),
            Container(
              width: 298 - 48,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 2.4),
              child: Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
