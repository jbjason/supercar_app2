import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/screens/car2_details_screen.dart';
import 'package:supercar_app2/widgets/car2_home/car2h_card_body.dart';
import 'package:supercar_app2/widgets/car2_home/car2h_img_counter.dart';

class Car2hImg extends StatelessWidget {
  const Car2hImg({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final selectedImg = ValueNotifier<int>(0);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        // imgs
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          top: -40,
          child: PageView.builder(
            itemCount: cars2.length,
            onPageChanged: (index) => selectedImg.value = index,
            itemBuilder: (context, i) => InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => Car2DetailsScreen(car2: cars2[i])),
                );
              },
              child: Image.asset(cars2[i].img, fit: BoxFit.contain),
            ),
          ),
        ),
        // cardBody
        Positioned(
          left: 30,
          top: 120,
          height: 100,
          width: 115,
          child: Stack(
            clipBehavior: Clip.none,
            children: const [
              // shadow
              Positioned(
                top: -15,
                left: -15,
                height: 40,
                width: 40,
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
              // card-body
              Car2hCardBody(),
            ],
          ),
        ),
        // img counter
        Car2hImgCounter(selectedImg: selectedImg),
        // circular Button
        Positioned(top: 90, right: size.width * .35, child: _circularButton()),
        // circular Button
        Positioned(
            bottom: 150, right: size.width * .15, child: _circularButton()),
        // circular Button
        Positioned(
            bottom: 90, right: size.width * .55, child: _circularButton())
      ],
    );
  }

  Widget _circularButton() => Container(
        height: 35,
        width: 35,
        padding: const EdgeInsets.all(6.5),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white12,
          boxShadow: [
            BoxShadow(color: backMed, blurRadius: 7, spreadRadius: 1),
          ],
        ),
        child: Container(
          constraints: const BoxConstraints.expand(),
          padding: const EdgeInsets.all(6.5),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white12,
            boxShadow: [
              BoxShadow(color: backMed, blurRadius: 7, spreadRadius: 1),
            ],
          ),
          child: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: accent,
              boxShadow: [
                BoxShadow(color: backMed, blurRadius: 7, spreadRadius: 1),
              ],
            ),
          ),
        ),
      );
}
