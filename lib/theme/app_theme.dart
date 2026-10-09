import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData temaClaro = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.deepPurple,

    scaffoldBackgroundColor: Colors.white,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.deepPurpleAccent,
    ),

    cardTheme: CardThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );

  static final ThemeData temaEscuro = ThemeData(
    brightness: Brightness.dark,

    scaffoldBackgroundColor: const Color(0xFF121212),

    primarySwatch: Colors.deepPurple,

    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF311B92),
      foregroundColor: Colors.white,
      centerTitle: true,
    ),

    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),

    cardTheme: CardThemeData(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}
