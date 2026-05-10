import 'package:flutter/material.dart';

class BuildWorkflowCard extends StatelessWidget {
  const BuildWorkflowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.grey.shade200),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.03),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          // 1. Browser-style Header
          _buildCardHeader(),

          // 2. The Internal Preview Content
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: _buildInternalPreview(),
          ),
        ],
      ),
    );
  }

  Widget _buildCardHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade100)),
      ),
      child: Row(
        children: [
          // Three "dots" (browser controls)
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
          // Central "URL" tag
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(6),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: const Text(
              "planis.ai / delivery",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildInternalPreview() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1A1610), // Matches the dark brown/black theme
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // Header of the inner preview
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Amalfi Coast - 7 Days",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                  ),
                ),
                Text(
                  "Proposal Preview",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            ),
          ),
          // Day Items
          _buildDayItem(
            "Day 1 - Arrival in Naples",
            "Private transfer, hotel check-in",
          ),
          _buildDayItem(
            "Day 2 - Positano Exploration",
            "Boat transfer, beach time, dinner reservation",
          ),
          _buildDayItem(
            "Day 3 - Capri Day Trip",
            "Private boat tour, Blue Grotto visit",
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildDayItem(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            Icons.calendar_today_outlined,
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
