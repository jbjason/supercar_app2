import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/model/car2.dart';

class Car2dBodyTexts extends StatelessWidget {
  const Car2dBodyTexts({super.key, required this.car2});
  final Car2 car2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            car2.tag,
            style: const TextStyle(fontSize: 12, color: accent),
          ),
          Text(
            car2.title,
            style: const TextStyle(fontSize: 25, color: Colors.white),
          ),
          const SizedBox(height: 10),
          Text(
            'USD \$ ${car2.price}',
            style: const TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
