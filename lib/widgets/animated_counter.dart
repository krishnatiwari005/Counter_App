import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final int count;
  final double fontSize;
  final Color color;

  const AnimatedCounter({
    super.key,
    required this.count,
    this.fontSize = 48,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        return FadeTransition(
          opacity: animation,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.8, end: 1.0).animate(animation),
            child: child,
          ),
        );
      },
      child: Text(
        '$count',
        key: ValueKey(count),
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: color,
        ),
      ),
    );
  }
}
