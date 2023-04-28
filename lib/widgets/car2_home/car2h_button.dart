import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';

class Car2hButton extends StatelessWidget {
  const Car2hButton({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        height: 70,
        width: size.width * .4,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(80),
            bottomRight: Radius.circular(50),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [accentDark, accent],
          ),
        ),
        child: const Text(
          'Skip →',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
