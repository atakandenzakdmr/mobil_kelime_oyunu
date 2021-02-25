import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class TextbgConstants {
  static TextbgConstants instance = TextbgConstants._init();
  TextbgConstants._init();
  
  final electionNight = Color(0xff0A0424); //background
}

/*Text font entegre
1-Google Fontlar'dan indirilmesi
2-Projemizin olduğu klasöre ‘assets’ adında yeni bir klasör oluşturalım. 
Bu assets klasörü içerisine ise ‘fonts’ adında yeni bir klasör daha oluşturalım. 
Ardından fonts klasörü içerisine indirmiş olduğumuz fontu yükleyelim. 
3-Fontları pubspec.yaml Dosyası İçerisine Tanımlayalım.
*/

