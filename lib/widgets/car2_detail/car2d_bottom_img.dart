import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';

class Car2dBottomImg extends StatelessWidget {
  const Car2dBottomImg({super.key, required this.i});
  final int i;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        const Positioned(
          top: -15,
          left: -15,
          height: 25,
          width: 25,
          child: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: accent,
                  blurRadius: 60,
                  offset: Offset(5, 5),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.all(1.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11),
              gradient: const SweepGradient(
                colors: [
                  Colors.transparent,
                  accent,
                  Colors.transparent,
                ],
                stops: [.45, .6, 1],
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(11),
              child: Image.asset(
                cars2Parts[i].img,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
