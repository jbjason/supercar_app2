import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/widgets/car2_home/car2h_appbar.dart';
import 'package:supercar_app2/widgets/car2_home/car2h_button.dart';
import 'package:supercar_app2/widgets/car2_home/car2h_img.dart';

class Car2HomeScreen extends StatelessWidget {
  const Car2HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          // backColors
          getBackColorWidget(),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // nineBot text & green arrowLines
                Car2hAppbar(size: size),
                const SizedBox(height: 20),
                // Gokart-Pro text & subtitle
                _gokartText(),
                const Text(
                  'Upped The Game',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                // Go-kart text & img
                const Expanded(child: Car2hImg()),
                Car2hButton(size: size),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _gokartText() => RichText(
        text: const TextSpan(
          text: 'GoKart ',
          style: TextStyle(
              fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          children: [
            TextSpan(
              text: 'PRO',
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.bold, color: accent),
            ),
          ],
        ),
      );
}
