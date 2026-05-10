import 'package:flutter/material.dart';

class PricingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String price;
  final String credits;
  final String buttonText;
  final List<String> features;
  final bool isMostPopular;

  const PricingCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.credits,
    required this.buttonText,
    required this.features,
    this.isMostPopular = false,
  });

  @override
  Widget build(BuildContext context) {
    final backgroundColor = isMostPopular
        ? const Color(0xFF1A1A1A)
        : Colors.white;
    final textColor = isMostPopular ? Colors.white : Colors.black;
    final subtitleColor = isMostPopular ? Colors.grey[400] : Colors.grey[600];

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.grey.withValues(alpha: 0.2)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  color: subtitleColor,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  color: textColor,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                subtitle,
                style: TextStyle(
                  color: subtitleColor,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "\$$price",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 4),
                    child: Text(
                      "/month",
                      style: TextStyle(color: subtitleColor, fontSize: 14),
                    ),
                  ),
                ],
              ),
              Text(
                credits,
                style: TextStyle(color: subtitleColor, fontSize: 12),
              ),
              const SizedBox(height: 32),
              _buildButton(),
              const SizedBox(height: 40),
              ...features.map(
                (f) => _buildFeatureRow(f, textColor, subtitleColor!),
              ),
            ],
          ),
        ),
        if (isMostPopular)
          Positioned(
            top: -12,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFC5A368),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  "MOST POPULAR",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildButton() {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: isMostPopular
              ? const Color(0xFFC5A368)
              : Colors.white,
          foregroundColor: isMostPopular ? Colors.white : Colors.black,
          elevation: 0,
          side: isMostPopular
              ? BorderSide.none
              : const BorderSide(color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildFeatureRow(String text, Color textColor, Color dotColor) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Icon(Icons.circle, size: 4, color: dotColor),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: textColor.withValues(alpha: 0.8),
                fontSize: 13,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
