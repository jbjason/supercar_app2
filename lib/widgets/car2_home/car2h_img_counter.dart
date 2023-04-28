import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';

class Car2hImgCounter extends StatelessWidget {
  const Car2hImgCounter({super.key, required this.selectedImg});

  final ValueNotifier<int> selectedImg;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          cars2.length,
          (index) => ValueListenableBuilder(
            valueListenable: selectedImg,
            builder: (context, selected, _) => Container(
              height: 3,
              width: selected == index ? 50 : 15,
              margin: const EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                color: selected == index ? accent : Colors.white12,
                borderRadius: BorderRadius.circular(20),
                boxShadow: selected == index
                    ? [
                        const BoxShadow(
                          color: accent,
                          spreadRadius: 4,
                          blurRadius: 50,
                        )
                      ]
                    : [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
