import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/screens/faq/faq_screen.dart';
import 'package:plains_ai/presentation/screens/how_it_works/how_it_works_screen.dart';
import 'package:plains_ai/presentation/screens/pricing/pricing_screen.dart';

class BuildBottomNavWidget extends StatelessWidget {
  const BuildBottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: const BoxDecoration(
        color: Color(0xFFF9F9F7),
        border: Border(top: BorderSide(color: Colors.black12, width: 0.5)),
      ),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildNavLink(
              "How it Works",
              onPress: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const HowItWorksScreen()),
              ),
            ),
            _buildNavLink(
              "Pricing",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const PricingScreen()),
                );
              },
            ),
            _buildNavLink(
              "FAQ",
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => FAQScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavLink(String title, {VoidCallback? onPress}) {
    return InkWell(
      onTap: () {
        if (onPress != null) {
          onPress();
        }
      },
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
