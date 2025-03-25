import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      contrastLevel: 1.0,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.lateefTextTheme(),
  );
}
