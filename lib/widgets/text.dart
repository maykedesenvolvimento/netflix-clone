import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix/core/app_colors.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color color;
  final double size;
  final FontWeight weight;

  const TextWidget({
    Key? key,
    required this.text,
    this.color = AppColors.black,
    required this.size,
    this.weight = FontWeight.w400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.newRocker(
        color: color,
        fontSize: size,
        fontWeight: weight,
        decoration: TextDecoration.none,
      ),
    );
  }
}
