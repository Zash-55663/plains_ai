import 'package:flutter/material.dart';

class BuildDiscoveryCard extends StatelessWidget {
  const BuildDiscoveryCard({super.key});

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
          // Browser-style Header
          _buildCardHeader("planis.ai / discovery"),

          Padding(
            padding: const EdgeInsets.all(24.0),
            child: _buildDiscoveryContent(),
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

  Widget _buildDiscoveryContent() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F7),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          // Search Title
          const Row(
            children: [
              Icon(Icons.apartment, size: 20, color: Colors.grey),
              SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hotel options in Positano",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    "3 matches found",
                    style: TextStyle(color: Colors.grey, fontSize: 10),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Hotel List Items
          _buildHotelItem("Le Sirenuse", "Sea View Suite", "5"),
          _buildHotelItem("Il San Pietro", "Cliffs de Deluxe", "5"),
          _buildHotelItem("Villa Treville", "Private Villa", null),

          const SizedBox(height: 20),

          // Add to Itinerary Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: const Size(double.infinity, 44),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.white, size: 16),
                SizedBox(width: 8),
                Text(
                  "Add to itinerary",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHotelItem(String name, String type, String? rating) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    if (rating != null) ...[
                      const SizedBox(width: 4),
                      Text(
                        "$rating★",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ],
                ),
                Text(
                  type,
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
