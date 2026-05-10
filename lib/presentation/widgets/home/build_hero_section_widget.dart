import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildHeroSectionWidget extends StatelessWidget {
  const BuildHeroSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // The small gold tag
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFFE8DCC4).withValues(alpha: 0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            "AI-powered travel plan studio",
            style: GoogleFonts.inter(
              color: const Color(0xFF8B6B23),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Large Serif Heading
        Text(
          "From input to\npublished travel\nplans.",
          style: GoogleFonts.playfairDisplay(
            fontSize: 48,
            fontWeight: FontWeight.w700,
            height: 1.1,
            color: const Color(0xFF1A1A1A),
          ),
        ),
        const SizedBox(height: 24),
        // Subtitle text
        Text(
          "Start from a supplier email, trip brief, or DMC data. planis.ai turns it into a client-ready travel plan you edit, publish, and share.",
          style: GoogleFonts.inter(
            fontSize: 16,
            color: Colors.black54,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
