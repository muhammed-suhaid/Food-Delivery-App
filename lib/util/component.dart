import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextButtonWithFunction extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color color;
  final Color textcolor;
  final void Function() buttonFunction;

  const TextButtonWithFunction({
    super.key,
    required this.text,
    required this.height,
    required this.width,
    required this.color,
    required this.buttonFunction,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: buttonFunction,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: textcolor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
