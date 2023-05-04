import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/model/car2.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_body_image.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_body_texts.dart';
import 'package:supercar_app2/widgets/car2_painter.dart';
import 'package:vector_math/vector_math.dart' as math;

class Car2dBody extends StatelessWidget {
  const Car2dBody({super.key, required this.size, required this.car2});
  final Size size;
  final Car2 car2;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // circular progess
        Positioned.fill(
          top: 80,
          left: 15,
          right: 15,
          bottom: -50,
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()..rotateX(math.radians(73)),
            child: CustomPaint(painter: Car2dBodyPainter()),
          ),
        ),
        // arrow key Container on top of Circular progess
        Positioned(
          left: 0,
          right: 0,
          bottom: size.height * .126,
          child: Center(
            child: Container(
              height: 42,
              width: 42,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white12,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    color: backDark,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  ),
                  BoxShadow(color: Colors.white12, blurRadius: 4),
                ],
              ),
              child: const Text(
                '↹',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
        ),
        // img
        // Image.asset(car2.img, fit: BoxFit.contain),
        Positioned(
            left: 0,
            right: 0,
            bottom: size.height * .22,
            child: const Car2dBodyImage()),
        // in-stock, Title & price texts
        Positioned(
          left: 0,
          bottom: 15,
          child: Car2dBodyTexts(car2: car2),
        ),
      ],
    );
  }
}
