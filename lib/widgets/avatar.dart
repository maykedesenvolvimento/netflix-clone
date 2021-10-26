import 'package:flutter/material.dart';
import 'package:netflix/core/app_colors.dart';
import 'package:netflix/widgets/text.dart';

class AvatarWidget extends StatelessWidget {
  final String name;

  const AvatarWidget({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                  image: Image.asset(
                'images/avatars/$name.png',
              ).image),
            ),
          ),
          const SizedBox(height: 12),
          TextWidget(
            text: name,
            size: 16,
            color: AppColors.gray.withOpacity(0.6),
          ),
        ],
      ),
    );
  }
}
