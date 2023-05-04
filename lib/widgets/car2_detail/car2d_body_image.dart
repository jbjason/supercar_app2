import 'package:flutter/material.dart';
import 'package:imageview360/imageview360.dart';

class Car2dBodyImage extends StatefulWidget {
  const Car2dBodyImage({super.key});
  @override
  State<Car2dBodyImage> createState() => _Car2dBodyImageState();
}

class _Car2dBodyImageState extends State<Car2dBodyImage> {
  List<ImageProvider> imageList = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => getPreachImg());
  }

  @override
  Widget build(BuildContext context) {
    return !_isLoading
        ? const Center()
        : ImageView360(
            key: UniqueKey(),
            imageList: imageList,
            autoRotate: true,
            rotationCount: 2,
            rotationDirection: RotationDirection.anticlockwise,
            frameChangeDuration: const Duration(milliseconds: 50),
            swipeSensitivity: 2,
            allowSwipeToRotate: true,
          );
  }

  void getPreachImg() async {
    for (int i = 1; i <= 9; i++) {
      imageList.add(AssetImage('assets/car2/kart-$i.png'));
      await precacheImage(AssetImage('assets/car2/kart-$i.png'), context);
    }
    setState(() => _isLoading = true);
  }
}
