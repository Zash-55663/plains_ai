import 'package:flutter/material.dart';

class PricingDisclaimer extends StatelessWidget {
  const PricingDisclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Column(
        children: [
          const Text(
            "Card required at sign-up. Get 2 free plans during your 7-day trial. If you use them early, your paid subscription starts immediately and your monthly credits unlock. Otherwise, your card is charged automatically on day 7 unless you cancel before then.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 11, height: 1.6),
          ),
          const SizedBox(height: 24),
          const Text(
            "Credits = Published plans. Editing, PDF export, and invoicing are always free.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 11, height: 1.6),
          ),
          const SizedBox(height: 12),
          const Text(
            "Plans and invoices support any currency - USD, EUR, GBP, AED, PKR, INR, and more.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 11, height: 1.6),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Running a team? ",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
              GestureDetector(
                onTap: () {
                  // Add contact/chat logic here
                },
                child: const Text(
                  "Let's talk.",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
