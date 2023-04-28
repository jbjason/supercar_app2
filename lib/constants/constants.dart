import 'package:flutter/material.dart';
import 'package:supercar_app2/model/car2.dart';
import 'package:supercar_app2/model/car2_part.dart';

const accent = Color(0xFFACFD3E);
const accentMid = Color(0xFF347706);
const accentDark = Color(0xFF002700);

const backDark = Color(0xFF0C1013);
const backMed = Color(0xFF1C1D22);
const backLight = Color(0xFF29313C);
const backIcon = Color(0xFF364445);

const text = Color(0xFFFEFFFF);
const textDark = Color(0xFF666666);

final cars2 = [
  Car2(
      img: 'assets/car2/kart-8.png',
      title: 'Ninbebot Gokart Pro',
      tag: 'in Stock',
      parts: cars2Parts,
      price: 2199.00),
  Car2(
      img: 'assets/car2/kart-1.png',
      title: 'Ninbebot Gokart Pro',
      tag: 'in Stock',
      parts: cars2Parts,
      price: 2199.00),
  Car2(
      img: 'assets/car2/kart-2.png',
      title: 'Ninbebot Gokart Pro',
      tag: 'in Stock',
      parts: cars2Parts,
      price: 2199.00),
  Car2(
      img: 'assets/car2/kart-3.png',
      title: 'Ninbebot Gokart Pro',
      tag: 'in Stock',
      parts: cars2Parts,
      price: 2199.00),
  Car2(
      img: 'assets/car2/kart-4.png',
      title: 'Ninbebot Gokart Pro',
      tag: 'in Stock',
      parts: cars2Parts,
      price: 2199.00),
];

const cars2Parts = [
  Car2Part(
      title: 'Front LED Light', img: 'assets/car2/card-1.png', price: 96.0),
  Car2Part(
      title: 'Aerodynamic Rare Wing',
      img: 'assets/car2/card-2.png',
      price: 55.0),
  Car2Part(title: 'Metal Pedals', img: 'assets/car2/card-3.png', price: 146.0),
  Car2Part(title: 'Horn Blower', img: 'assets/car2/card-4.png', price: 240.0),
];

Positioned getBackColorWidget() => const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [backIcon, backLight, backMed, backDark],
          ),
        ),
      ),
    );
