import 'package:flutter/material.dart';

class HowItWorksHeader extends StatelessWidget {
  const HowItWorksHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "What the product actually does",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: -0.5,
          ),
        ),
        SizedBox(height: 16),
        Text(
          "These are the workflows already present in the app, not placeholder marketing promises.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, height: 1.5),
        ),
      ],
    );
  }
}
