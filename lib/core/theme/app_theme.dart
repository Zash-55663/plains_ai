import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData planisTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xFF6366F1), // Indigo accent
  scaffoldBackgroundColor: const Color(0xFF0D0D0D),
  cardColor: const Color(0xFF1A1A1A),
  textTheme: GoogleFonts.lexendTextTheme(ThemeData.dark().textTheme),
);
