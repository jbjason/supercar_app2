import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';

class Car2dAddLoveButtons extends StatelessWidget {
  const Car2dAddLoveButtons({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0 - 24,
      left: 0,
      right: 0,
      child: Row(
        children: [
          Container(
            width: size.width * .5,
            height: 55,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [accentDark, accent, accent],
              ),
              borderRadius: BorderRadius.horizontal(
                right: Radius.elliptical(90, 80),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Add to cart'),
                Icon(Icons.add_shopping_cart_outlined)
              ],
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.white10),
            child:
                const Icon(Icons.favorite_border_outlined, color: Colors.white),
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}
