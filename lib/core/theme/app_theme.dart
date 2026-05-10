import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData planisTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(
    0xFFF9F9F7,
  ), // The light off-white background
  primaryColor: const Color(0xFF0D0D0D), // Charcoal for text
  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFFB88E2F), // Gold accent color
  ),
  textTheme: GoogleFonts.playfairDisplayTextTheme().copyWith(
    // Serif for headings
    bodyMedium: GoogleFonts.inter(), // Sans-serif for body
  ),
);
