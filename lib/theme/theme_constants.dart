
import 'package:flutter/material.dart';

const kLabelStyleLight=TextStyle(
  fontSize: 15,
  color: Color(0x990E0D0D),
  fontWeight: FontWeight.w400,
);
const kLabelStyleDark=TextStyle(
  fontSize: 15,
  color: Color(0xffa3a3a3),
  fontWeight: FontWeight.w400,
);
const kBoldDark=TextStyle(
  fontSize: 55,
  color: Color(0xffffffff),
  fontWeight: FontWeight.w900,
);
const kBoldLight=TextStyle(
  fontSize: 55,
  color: Color(0xff000000),
  fontWeight: FontWeight.w900,
);


class MyTheme{
static final lightTheme=ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade300,
  colorScheme: ColorScheme.light(),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Color(0xF7262626)),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle:TextStyle(
      fontWeight: FontWeight.w900,
     fontSize: 20,
     color: Color(0xFF0C0C0C),
    ),
    color: Color(0xFFEFBE24),
  ),
  sliderTheme: SliderThemeData(
      activeTrackColor:Color(0xFFD26302),
      thumbColor: Color(0xFFDE9605),
      inactiveTrackColor: Color(0xFFE3B47B),
      overlayColor: Color(0x29DE9605),
  ),
  backgroundColor: Color(0xFFD9C587),
);
static final darkTheme=ThemeData(
  scaffoldBackgroundColor: Colors.grey.shade900,
  colorScheme: ColorScheme.dark(),
  switchTheme: SwitchThemeData(
    trackColor: MaterialStateProperty.all<Color>(Color(0xFFD9C587)),
    thumbColor: MaterialStateProperty.all<Color>(Color(0xFFFFFFFF)),
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor:Color(0xF7003ACB),
    thumbColor: Color(0xF715437D),
    inactiveTrackColor: Color(0xF7242B34),
    overlayColor:Color(0x2915437D),
  ),
  appBarTheme: AppBarTheme(
    titleTextStyle:TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 20,
      color: Color(0xE9EEEAEA),
    ),
    color: Colors.grey.shade900,
  ),
  backgroundColor: Color(0xF7262626),
);
}

