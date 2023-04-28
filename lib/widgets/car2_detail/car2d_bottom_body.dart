import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_bottom_img.dart';

class Car2dBottomBody extends StatelessWidget {
  const Car2dBottomBody({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20),
      color: backDark,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          // Extra Bundle text
          const Text(
            'Extra Bundle Included',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            height: size.height * .22,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                children: List.generate(
                  cars2Parts.length,
                  (i) => card2dBottomItem(i),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget card2dBottomItem(int i) => Container(
        padding: const EdgeInsets.all(13),
        margin: const EdgeInsets.only(right: 15),
        width: 115,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.white24, Colors.white10, Colors.transparent],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // img & shadow
            Expanded(child: Car2dBottomImg(i: i)),
            const SizedBox(height: 8),
            // title
            Text(
              cars2Parts[i].title,
              style: const TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 6),
            // price
            Text(
              'USD ${cars2Parts[i].price}',
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ],
        ),
      );
}
