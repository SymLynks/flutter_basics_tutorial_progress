import 'package:flutter/material.dart';
import 'package:flutter_grundlagen/application/theme_service.dart';
import 'package:provider/provider.dart';

class Star extends StatelessWidget {
  const Star({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: const Color(0xFFC9E9FC),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFFC9E9FC).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
          ),
        ],
      ),
    );
  }
}

class AnimatedStar extends StatelessWidget {
  const AnimatedStar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeService>(builder: (context, themeService, child) {
      return AnimatedOpacity(
        opacity: themeService.isDarkModeOn ? 1 : 0,
        duration: const Duration(milliseconds: 200),
        child: const Star(),
      );
    });
  }
}
