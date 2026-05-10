import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildItineraryCardWidget extends StatelessWidget {
  const BuildItineraryCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(12),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Amalfi Coast",
                style: GoogleFonts.playfairDisplay(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              _buildSmallTag("Auto-fill", Icons.auto_awesome),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            "Sep 12 - Sep 19 • 7 Days",
            style: GoogleFonts.inter(color: Colors.grey[600], fontSize: 12),
          ),
          const SizedBox(height: 20),
          _buildDayTile(
            "Day 1: Arrival in Positano",
            "Check-in at Le Sirenuse. Welcome drinks on the champagne terrace.",
          ),
          const SizedBox(height: 12),
          _buildDayTile(
            "Day 2: Coastal Exploration",
            "Private boat tour to Capri, includes Blue Grotto stop.",
            isAiDraft: true,
          ),
        ],
      ),
    );
  }

  Widget _buildDayTile(String title, String desc, {bool isAiDraft = false}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[200]!),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              if (isAiDraft)
                _buildSmallTag("AI DRAFT", null, color: Colors.orange[50]!),
            ],
          ),
          const SizedBox(height: 8),
          Text(desc, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
        ],
      ),
    );
  }

  Widget _buildSmallTag(
    String label,
    IconData? icon, {
    Color color = const Color(0xFFF5F5F5),
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          if (icon != null) Icon(icon, size: 10, color: Colors.orange[800]),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.orange[900],
            ),
          ),
        ],
      ),
    );
  }
}
