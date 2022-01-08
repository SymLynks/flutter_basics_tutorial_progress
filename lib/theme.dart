import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final Color _lightPrimaryColor = Colors.blueGrey.shade50;
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimaryColor = Colors.blueGrey.shade200;
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _lightAppbarColor = Colors.blue;

  static final Color _darkPrimaryColor = Colors.blueGrey.shade900;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static final Color _darkOnPrimaryColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _darkAppbarColor = Colors.blueGrey.shade800;

  static const Color _iconColor = Colors.white;

  static const TextStyle _lightHeadingText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
    fontWeight: FontWeight.bold,
  );
  static const TextStyle _lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
  );

  static final TextStyle _darkHeadingText =
      _lightHeadingText.copyWith(color: _darkTextColorPrimary);

  static final TextStyle _darkBodyText =
      _lightBodyText.copyWith(color: _darkTextColorPrimary);

  static const TextTheme _lightTextTheme = TextTheme(
    headline1: _lightHeadingText,
    bodyText1: _lightBodyText,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkHeadingText,
    bodyText1: _darkBodyText,
  );

  static final ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
        primary: _lightPrimaryColor,
        onPrimary: _lightOnPrimaryColor,
        primaryVariant: _lightPrimaryVariantColor),
    scaffoldBackgroundColor: _lightPrimaryColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightAppbarColor,
      iconTheme: IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _lightAppbarColor,
    textTheme: _lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(
        primary: _darkPrimaryColor,
        onPrimary: _darkOnPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor),
    scaffoldBackgroundColor: _darkPrimaryColor,
    appBarTheme: AppBarTheme(
      backgroundColor: _darkAppbarColor,
      iconTheme: const IconThemeData(color: _iconColor),
    ),
    bottomAppBarColor: _darkAppbarColor,
    textTheme: _darkTextTheme,
  );
}
