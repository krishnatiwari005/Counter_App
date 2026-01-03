import 'package:flutter/material.dart';
import 'dart:math';

class MalaProgress extends StatelessWidget {
  final int count;
  final int total;
  final double size;
  final Color color;

  const MalaProgress({
    super.key,
    required this.count,
    this.total = 108,
    this.size = 240,
    this.color = Colors.brown,
  });

  @override
  Widget build(BuildContext context) {
    final progress = (count / total).clamp(0.0, 1.0);

    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        alignment: Alignment.center,
        children: [

          // Background Circle
          CustomPaint(
            size: Size(size, size),
            painter: _MalaBackgroundPainter(),
          ),

          // Progress Arc
          Transform.rotate(
            angle: -pi / 2,
            child: CircularProgressIndicator(
              value: progress,
              strokeWidth: 10,
              backgroundColor: Colors.brown.shade100,
              valueColor: AlwaysStoppedAnimation(color),
            ),
          ),
        ],
      ),
    );
  }
}

class _MalaBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.brown.shade200
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2.2,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
