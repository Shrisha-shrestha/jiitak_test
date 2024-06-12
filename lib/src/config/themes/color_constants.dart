// This is an immutable class that defines a set of constant colors that can be used throughout the app.
import 'package:flutter/material.dart';

@immutable
class ColorConstants {
  // This is a private static field that holds the singleton instance of the class.
  static const ColorConstants _instance = ColorConstants._internal();

  // This is a private const constructor that is used to create the singleton instance.
  const ColorConstants._internal();

  // This is a factory constructor that always returns the singleton instance.
  factory ColorConstants() => _instance;

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff0c0d0d);
  static const Color background = Color(0xfff5f5f7);
  static const Color jobseeker500 = Color(0xfff3a82e);
  static const Color jobseeker50 = Color(0xfffef5e7);
  static const Color jobseeker950 = Color(0xff180f01);
  static const Color jobseeker100 = Color(0xfffcebcf);
  static const Color jobseeker200 = Color(0xfff9d79f);
  static const Color jobseeker300 = Color(0xfff7c26e);
  static const Color jobseeker400 = Color(0xfff4ae3e);
  static const Color jobseeker600 = Color(0xffc17b0b);
  static const Color jobseeker700 = Color(0xff915c08);
  static const Color jobseeker800 = Color(0xff603e06);
  static const Color jobseeker900 = Color(0xff301f03);
  static const Color employer500 = Color(0xffb2512b);
  static const Color employer50 = Color(0xfffaefea);
  static const Color employer950 = Color(0xff150905);
  static const Color employer100 = Color(0xfff5dfd6);
  static const Color employer200 = Color(0xffebbead);
  static const Color employer300 = Color(0xffe19e84);
  static const Color employer400 = Color(0xffd77e5b);
  static const Color employer600 = Color(0xffa44b28);
  static const Color employer700 = Color(0xff7b381e);
  static const Color employer800 = Color(0xff522514);
  static const Color employer900 = Color(0xff29130a);
  static const Color gray500 = Color(0xffa8a9ad);
  static const Color gray50 = Color(0xfff2f2f3);
  static const Color gray950 = Color(0xff0c0d0d);
  static const Color gray100 = Color(0xffe5e5e6);
  static const Color gray200 = Color(0xffcacbce);
  static const Color gray300 = Color(0xffb0b1b5);
  static const Color gray400 = Color(0xff96979c);
  static const Color gray600 = Color(0xff636469);
  static const Color gray700 = Color(0xff4a4b4f);
  static const Color gray800 = Color(0xff313235);
  static const Color gray900 = Color(0xff19191a);
  static const Color danger500 = Color(0xffff3333);
  static const Color danger50 = Color(0xffffe5e5);
  static const Color danger950 = Color(0xff1a0000);
  static const Color danger100 = Color(0xffffcccc);
  static const Color danger200 = Color(0xffff9999);
  static const Color danger300 = Color(0xffff6666);
  static const Color danger400 = Color(0xffff3333);
  static const Color danger600 = Color(0xffcc0000);
  static const Color danger700 = Color(0xff990000);
  static const Color danger800 = Color(0xff660000);
  static const Color danger900 = Color(0xff330000);
  static const Color success500 = Color(0xff00993d);
  static const Color success50 = Color(0xffe5fff0);
  static const Color success950 = Color(0xff001a0a);
  static const Color success100 = Color(0xffccffe0);
  static const Color success200 = Color(0xff99ffc2);
  static const Color success300 = Color(0xff66ffa3);
  static const Color success400 = Color(0xff33ff85);
  static const Color success600 = Color(0xff00cc52);
  static const Color success700 = Color(0xff00993d);
  static const Color success800 = Color(0xff006629);
  static const Color success900 = Color(0xff003314);
  static const Color flowkitPurple = Color(0xff7b61ff);
  static const Color flowkitCharcoal = Color(0xff222222);
  static const Color flowkitRed = Color(0xfffc5555);
  static const Color flowkitGreen = Color(0xff29cc6a);
  static const Color flowkitBlue = Color(0xff0099ff);
  static const Color flowkitWhite = Color(0xffffffff);
  static const Color typePrimary = Color(0xe5000000);
  static const Color primaryColor = Color(0xFFFAAA14);
}
