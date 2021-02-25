import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class ColorConstants {
  static ColorConstants instance = ColorConstants._init();
  ColorConstants._init();

  final deadSea = Color(0xff6fffe9);
  final mango = Color(0xffffa62b); //text
  final electionNight = Color(0xff0A0424); //background
  final brainGrey = Color(0xff0A0424);
}

/* Renk oluşturma adımları 
1- https://chrome.google.com/webstore/detail/slick-color-picker/hpdijmlpjckdfpccehdabfnlcnecijkh/related
uzantıyla renk Hexadecimal kodunun seçilmesi  0xff #6fffe9
2- https://colornamer.robertcooper.me/
renk kodunun isim karşılığının öğrenilmesi  DEAD SEA

*/