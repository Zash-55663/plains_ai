import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class PricingScreen extends StatelessWidget {
  const PricingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F7),
      appBar: const BuildAppBarWidget(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          children: [
            const Text(
              "Choose the plan that fits how\nyou create and publish.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                height: 1.2,
              ),
            ),
            const SizedBox(height: 60),
            const PricingCard(
              title: "Creator",
              subtitle:
                  "For travel creators building momentum.\nMove from idea to published plan faster.",
              price: "19.99",
              credits: "300 credits/month",
              buttonText: "Start 7 day Free Creator Trial",
              features: [
                "Turn raw travel input into polished plans.",
                "Refine and edit before you publish.",
                "Publish with a shareable link.",
                "Download and share beautifully designed PDFs.",
                "Match your output to your brand.",
                "Track engagement on published plans.",
              ],
            ),
            const SizedBox(height: 40),
            const PricingCard(
              isMostPopular: true,
              title: "Creator Pro",
              subtitle:
                  "For active travel creators and growing brands.\nMore room to create, refine, and grow with momentum.",
              price: "59.99",
              credits: "2,000 credits/month",
              buttonText: "Start Creator Pro",
              features: [
                "Everything in Creator.",
                "2,000 monthly credits for higher-volume workflows.",
                "Early access to selected new features.",
              ],
            ),
            PricingDisclaimer(),
            const PlanPreviewSection(),
            const StepProcessSection(),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomNavWidget(),
    );
  }
}
