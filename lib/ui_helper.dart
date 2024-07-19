import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UlHelper {
  UlHelper._();

  static final Map<String, Color> _typeColorMap = {
    'Grass': Colors.green,
    'Fire': Colors.redAccent,
    'Water': Colors.blue,
    'Electric': Colors.yellow,
    'Rock': Colors.grey,
    'Ground': Colors.brown,
    'Bug': Colors.lightGreenAccent.shade700,
    'Psychic': Colors.indigo,
    'Fighting': Colors.orange,
    'Ghost': Colors.deepPurple,
    'Normal': Colors.black26,
    'Poison': Colors.deepPurpleAccent
  };

  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.20.sh : 0.20.sw;
  }

  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all((8.w));
    }
  }

  static EdgeInsets getIconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      
      return EdgeInsets.all(8.h);
    } else {
      return EdgeInsets.all((4.w));
    }
  }

  static double calculatePokemonImgbandBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.11.sh;
    } else {
      return 0.15.sw;
    }
  }

//bu bakılacak farklı ekran boyları için
  static ekranBoyutuAyarla() {
    debugPrint('Bura Calıştı');
    if (ScreenUtil().orientation == Orientation.portrait && 412 == 732) {
      print('Buraya girdi');

      return 0.1.sh;
    } else if (ScreenUtil().orientation == Orientation.landscape && 412 == 732)
      return 500.sw;
  }
} 
         
  
//393 == 830
    
  

