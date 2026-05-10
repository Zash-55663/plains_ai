import 'package:flutter/material.dart';

class BuildAIAssistCard extends StatelessWidget {
  const BuildAIAssistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          // Browser-style Header with the AI sub-URL
          _buildCardHeader("planis.ai / ai-assist"),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: _buildAIGeneratedContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildCardHeader(String url) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
      ),
      child: Row(
        children: [
          Row(
            children: List.generate(
              3,
              (index) => Container(
                margin: const EdgeInsets.only(right: 6),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Text(
              url,
              style: const TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildAIGeneratedContent() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        // Soft beige/cream gradient for AI look
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFF2EFE9), Color(0xFFFAF9F6)],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Generated Itinerary",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Serif',
                      ),
                    ),
                    Text(
                      "Based on your client brief",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                  ],
                ),
                Icon(
                  Icons.auto_awesome,
                  color: Colors.orange[300],
                  size: 20,
                ), // AI Sparkle
              ],
            ),
          ),
          _buildAIItem(
            "Day 1 - Arrival in Rome",
            "Private transfer, hotel check-in, evening at leisure",
          ),
          _buildAIItem(
            "Day 2 - Vatican & City Walk",
            "Guided Vatican tour, lunch in Trastevere",
          ),
          _buildAIItem(
            "Day 3 - Amalfi Coast Transfer",
            "Scenic transfer with coastal stops",
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildAIItem(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.9),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.white),
      ),
      child: Row(
        children: [
          Icon(
            Icons.auto_awesome_mosaic_outlined,
            size: 16,
            color: Colors.grey[400],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
