import 'package:flutter/material.dart';

class Car2dAppBar extends StatelessWidget {
  const Car2dAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white10,
              ),
              child: const Icon(Icons.shopping_basket_outlined,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
