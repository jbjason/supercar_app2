import 'package:flutter/material.dart';
import 'package:supercar_app2/constants/constants.dart';
import 'package:supercar_app2/model/car2.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_add_love_buttons.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_appbar.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_body.dart';
import 'package:supercar_app2/widgets/car2_detail/car2d_bottom_body.dart';

class Car2DetailsScreen extends StatelessWidget {
  const Car2DetailsScreen({super.key, required this.car2});
  final Car2 car2;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          // backColor
          getBackColorWidget(),
          // body
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // img, title, price text
              Expanded(child: Car2dBody(size: size, car2: car2)),
              // bottom Card (car parts)
              SizedBox(
                height: size.height * .35,
                width: size.width,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Car2dBottomBody(size: size),
                    Car2dAddLoveButtons(size: size),
                  ],
                ),
              ),
            ],
          ),
          // appBar
          const Car2dAppBar(),
        ],
      ),
    );
  }
}
