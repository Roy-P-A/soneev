import 'package:flutter/material.dart';
import 'package:winemonger/utils/theme/theme_constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: 'Montserrat',

    // appBarTheme: AppBarTheme(
    //     backgroundColor: primaryColor,
    //     titleTextStyle: const TextStyle(
    //         fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
    // textTheme: const TextTheme(
    //   headline3: TextStyle(
    //       fontWeight: FontWeight.w500, fontSize: 14, color: primaryColor),
    // ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: 'Montserrat',

    // appBarTheme: AppBarTheme(
    //     backgroundColor: primaryColor,
    //     titleTextStyle: const TextStyle(
    //         fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)),
    // textTheme: const TextTheme(
    //   headline3: TextStyle(
    //       fontWeight: FontWeight.w500, fontSize: 14, color: primaryColor),
    // ),
  );
}
