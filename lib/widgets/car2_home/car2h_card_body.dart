import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/widgets/car2_painter.dart';

class Car2hCardBody extends StatelessWidget {
  const Car2hCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(23),
      child: CustomPaint(
        painter: CardBodyPainter(),
        child: Padding(
          padding: const EdgeInsets.only(left: 2.3, top: 2.3),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(22),
            child: Stack(
              children: [
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(),
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.white.withOpacity(.2),
                        Colors.white.withOpacity(.05),
                        Colors.white.withOpacity(.005),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.speed_outlined, color: accent),
                      Text(
                        '23.0',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            fontStyle: FontStyle.italic,
                            color: Colors.white),
                      ),
                      Text(
                        'mph',
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
