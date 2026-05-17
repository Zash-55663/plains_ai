import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData planisTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: Color(0xFFF9F9F7),
  primaryColor: Color(0xff0d0d0d),
  colorScheme: ColorScheme.fromSeed(seedColor: Color(0xffb88e2f)),
  textTheme: GoogleFonts.playfairDisplayTextTheme().copyWith(
    bodyMedium: GoogleFonts.inter(),
  ),
);
