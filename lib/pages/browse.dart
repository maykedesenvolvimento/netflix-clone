import 'package:flutter/material.dart';
import 'package:netflix/core/app_colors.dart';
import 'package:netflix/widgets/avatar.dart';
import 'package:netflix/widgets/button.dart';
import 'package:netflix/widgets/text.dart';

class BrowsePage extends StatelessWidget {
  const BrowsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profiles = ['Mayke', 'Lucas', 'Monique', 'Infantil'];

    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: AppColors.dark,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const TextWidget(
                  text: 'Quem está assistindo?',
                  color: AppColors.white,
                  size: 48,
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: profiles.map((e) => AvatarWidget(name: e)).toList(),
                ),
                const SizedBox(height: 80),
                const ButtonWidget(label: 'Gerenciar perfis'),
              ],
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 60,
            decoration: BoxDecoration(color: AppColors.black.withOpacity(0.05)),
            child: Row(
              children: [
                const SizedBox(width: 50),
                Image.asset(
                  'images/logo.png',
                  width: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
