import 'package:flutter/material.dart';

class StepCard extends StatelessWidget {
  final String number;
  final String title;
  final String description;

  const StepCard({
    super.key,
    required this.number,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F7), // Match the off-white background
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.withValues(alpha: 0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            number,
            style: const TextStyle(
              color: Color(0xFFC5A368), // Gold/Tan color from the image
              fontSize: 24,
              fontFamily: 'Serif', // Use a serif font if available
            ),
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
