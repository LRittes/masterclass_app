import 'package:flutter/material.dart';

Color black = const Color(0xFF121517);
Color darkBlue = const Color(0xFF055AA3);
Color ice = const Color(0xffEDF4F8);
Color whiteLight = const Color(0xffD6DFE4);
Color blackLight = const Color(0xff172026);
Color gray = const Color(0xff51565A);

ThemeData themeDataDark = ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: black,
    actionsIconTheme: IconThemeData(
      color: ice,
    ),
    iconTheme: IconThemeData(color: ice),
    elevation: 0,
    titleTextStyle: textTheme.headline1,
  ),
  scaffoldBackgroundColor: black,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: darkBlue,
    ),
  ),
  iconTheme: IconThemeData(
    color: ice,
  ),
  textTheme: textTheme,
  bottomNavigationBarTheme: bNBTD,
);

ThemeData themeDataLight = themeDataDark.copyWith(
  appBarTheme: AppBarTheme(
    backgroundColor: whiteLight,
    actionsIconTheme: IconThemeData(
      color: blackLight,
    ),
    iconTheme: IconThemeData(color: blackLight),
    titleTextStyle: textTheme.headline1!.copyWith(
      color: blackLight,
    ),
    elevation: 0,
  ),
  scaffoldBackgroundColor: whiteLight,
  iconTheme: IconThemeData(
    color: blackLight,
  ),
  textTheme: textTheme.copyWith(
    headline1: textTheme.headline1!.copyWith(
      color: blackLight,
    ),
    headline2: textTheme.headline2!.copyWith(
      color: blackLight,
    ),
    headline3: textTheme.headline2!.copyWith(
      color: blackLight,
    ),
  ),
  bottomNavigationBarTheme: bNBTD.copyWith(
    backgroundColor: whiteLight,
    selectedItemColor: blackLight,
    selectedIconTheme: IconThemeData(color: blackLight),
    selectedLabelStyle: TextStyle(
      fontFamily: 'Poppins',
      fontSize: 10,
      fontWeight: FontWeight.w400,
      color: blackLight,
    ),
  ),
);

TextTheme textTheme = TextTheme(
  headline1: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: ice,
  ),
  headline2: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: ice,
  ),
  headline3: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ice,
  ),
  bodyText1: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: gray,
  ),
  bodyText2: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: gray,
  ),
  button: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: ice,
  ),
);

BottomNavigationBarThemeData bNBTD = BottomNavigationBarThemeData(
  backgroundColor: black,
  selectedItemColor: whiteLight,
  selectedIconTheme: IconThemeData(color: ice),
  selectedLabelStyle: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: blackLight,
  ),
  unselectedIconTheme: IconThemeData(color: gray),
  unselectedItemColor: gray,
  unselectedLabelStyle: TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: gray,
  ),
);

enum SVGThemeData {
  darkIsSelected(color: Color(0xffD6DFE4)),
  darkIsUnselected(color: Color(0xff51565A)),

  lightIsSelected(color: Color(0xff172026)),
  lightIsUnselected(color: Color(0xff51565A));

  const SVGThemeData({required this.color});

  final Color color;
}
