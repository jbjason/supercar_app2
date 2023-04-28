import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:vector_math/vector_math.dart' as math;

class Car2HomeAppbarPaint extends CustomPainter {
  final double shadowPosition;
  const Car2HomeAppbarPaint({required this.shadowPosition});
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final path = Path();
    final paint1 = Paint()
      ..color = accent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.75;
    path.lineTo(0, 0);
    path.lineTo(w * .3, h * .9);
    path.quadraticBezierTo(w * .35, h, w * .4, h);
    path.lineTo(w, h);
    canvas.drawPath(path, paint1);

    // draw Shadow
    final center = Offset(w * shadowPosition, h - 10);
    final rect = Rect.fromCenter(center: center, height: 5, width: 20);
    final path2 = Path()
      ..moveTo(w * .5, h)
      ..addRect(rect);
    canvas.drawShadow(path2, accent, 10, false);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CardBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    final center = Offset(w / 2, h / 2);
    final rect1 = Rect.fromCenter(center: center, width: w, height: h);
    const gradient1 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      stops: [.13, .2, 1],
      colors: [accent, accentMid, Colors.transparent],
    );
    final paint = Paint()..shader = gradient1.createShader(rect1);

    final path = Path();
    path.lineTo(w, 0);
    path.lineTo(w, 2);
    path.lineTo(45, 2);
    path.quadraticBezierTo(0, 2, 2, 30);
    path.lineTo(2, h);
    path.lineTo(0, h);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class Car2dBodyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final h = size.height, w = size.width;
    const gradient = SweepGradient(
      stops: [.001, .15, .3, .35, .5, 1],
      colors: [
        Colors.transparent,
        Color(0xFF424242),
        Color(0xFF757575),
        Color(0xFF424242),
        Colors.transparent,
        Colors.transparent,
      ],
    );
    final center = Offset(w / 2, h / 2);
    final rect = Rect.fromCenter(center: center, width: w, height: h);
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 6
      ..shader = gradient.createShader(rect);
    final path = Path();
    path.addArc(rect, math.radians(270), 360);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
