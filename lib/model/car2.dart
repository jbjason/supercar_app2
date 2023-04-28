import 'package:supercar_app2/model/car2_part.dart';

class Car2 {
  final String img;
  final String title;
  final String tag;
  final double price;
  final List<Car2Part> parts;

  Car2({
    required this.img,
    required this.title,
    required this.tag,
    required this.price,
    required this.parts,
  });
}
