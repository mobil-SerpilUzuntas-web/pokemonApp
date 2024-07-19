import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  static const String title = 'Pokedex';

  static TextStyle getTitleTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateAppTitleFontSize(44),
    );
  }

  static TextStyle getPokemonNameTextStyele() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(20),
    );
  }
  static TextStyle getPokemonNameLandsTextStyele() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
      //fontSize: _calculateFontSize(0.02.sw),
    );
  }

  static TextStyle getPokemonChipTextStyele() {
    return TextStyle(
      color: Colors.white,
      fontSize: _calculateFontSize(20),
    );
  }

  static double _calculateAppTitleFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 1).sp;
    }
  }

  static double _calculateFontSize(int size) {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return size.sp;
    } else {
      return (size * 0.6).sp;
    }
  }
 static TextStyle getPokeInfoLabelStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(20),
      color: Colors.black,
    );
  }
  static TextStyle getPokeInfoTextStyle() {
    return TextStyle(
      fontSize: _calculateFontSize(18),
      color: Colors.black,
    );
  }
}
