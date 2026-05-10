import 'package:flutter/material.dart';

class PlanPreviewSection extends StatelessWidget {
  const PlanPreviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        const Text(
          "See what your plans will look like",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        const Text(
          "Plan and invoice designs introduced regularly. Always evolving.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const SizedBox(height: 40),

        // Horizontal Scroll for the three cards
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            children: [
              _buildImageCard(
                "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?auto=format&fit=crop&w=560&h=256&q=80",
              ), // Replace with your image assets
              const SizedBox(width: 16),
              _buildImageCard(
                "https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&fit=crop&w=520&h=180&q=80",
              ),
              const SizedBox(width: 16),
              _buildImageCard(
                "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?auto=format&fit=crop&w=560&h=256&q=80",
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      width: 280, // Fixed width for consistent horizontal scrolling
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.network(
          imagePath,
          fit: BoxFit.cover,
          // Placeholder while you gather assets:
          errorBuilder: (context, error, stackTrace) => Container(
            height: 400,
            color: Colors.white,
            child: const Icon(Icons.image, color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
