import 'package:flutter/material.dart';
import 'package:supercar_app2/widgets/car2_painter.dart';

class Car2hAppbar extends StatelessWidget {
  const Car2hAppbar({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 20),
        const Text(
          'ninebot',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white54,
          ),
        ),
        const SizedBox(width: 55),
        Expanded(
          child: SizedBox(
            height: size.height * .18,
            child: Stack(
              clipBehavior: Clip.none,
              children: const [
                Positioned.fill(
                  child: CustomPaint(
                      painter: Car2HomeAppbarPaint(shadowPosition: .5)),
                ),
                Positioned.fill(
                  bottom: 30,
                  left: 40,
                  child: CustomPaint(
                      painter: Car2HomeAppbarPaint(shadowPosition: .85)),
                ),
                Positioned.fill(
                  bottom: 60,
                  left: 80,
                  child: CustomPaint(
                      painter: Car2HomeAppbarPaint(shadowPosition: .45)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
