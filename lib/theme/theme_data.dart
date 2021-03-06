import 'package:flutter/material.dart';

TextTheme textTheme = const TextTheme(
  bodyText1: TextStyle(
    fontSize: 20,
  ),
  bodyText2: TextStyle(
    fontSize: 18,
  ),
  button: TextStyle(
    fontSize: 16,
  ),
);

ElevatedButtonThemeData btnThemeLight = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    primary: Colors.lightBlue[600],
    shape: const StadiumBorder(),
    padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
    minimumSize: const Size(96, 48),
  ),
);

ElevatedButtonThemeData btnThemeDark = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    primary: Colors.cyan[200],
    onPrimary: Colors.blueGrey[900],
    shape: const StadiumBorder(),
    padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
    minimumSize: const Size(96, 48),
  ),
);

TextButtonThemeData txtBtnThemeLight = TextButtonThemeData(
  style: TextButton.styleFrom(
    primary: Colors.lightBlue[700],
    padding: const EdgeInsets.all(12),
    minimumSize: const Size(96, 56),
  ),
);
TextButtonThemeData txtBtnThemeDark = TextButtonThemeData(
  style: TextButton.styleFrom(
    primary: Colors.cyan[200],
    padding: const EdgeInsets.all(12),
    minimumSize: const Size(96, 56),
  ),
);

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Colors.lightBlue[600],
  textTheme: textTheme,
  scaffoldBackgroundColor: Colors.blueGrey[100],
  canvasColor: Colors.blueGrey[100],
  elevatedButtonTheme: btnThemeLight,
  textButtonTheme: txtBtnThemeLight,
  cardTheme: const CardTheme(
    margin: EdgeInsets.all(6),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.cyan,
  primaryColor: Colors.cyan,
  scaffoldBackgroundColor: const Color(0xFF1A2228),
  canvasColor: const Color(0xFF1A2228),
  textTheme: textTheme,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.cyan[200],
    foregroundColor: Colors.blueGrey[900],
  ),
  elevatedButtonTheme: btnThemeDark,
  textButtonTheme: txtBtnThemeDark,
  cardTheme: CardTheme(
    color: Colors.blueGrey[900],
    margin: const EdgeInsets.all(6),
  ),
);
