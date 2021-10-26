import 'package:flutter/material.dart';
import 'package:netflix/core/app_colors.dart';
import 'package:netflix/widgets/text.dart';

class ButtonWidget extends StatelessWidget {
  final String label;

  const ButtonWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = AppColors.gray.withOpacity(0.7);

    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 1),
          borderRadius: BorderRadius.circular(1),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 32,
        ),
        child: TextWidget(
          text: label,
          size: 15,
          color: color,
        ),
      ),
    );
  }
}
