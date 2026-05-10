import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/widgets/pricing/step_card.dart';

class StepProcessSection extends StatelessWidget {
  const StepProcessSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 80),
        const Text(
          "Paste supplier content. Get a premium plan.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Travel specialists spend hours reformatting supplier emails into something a client can trust. The paste-to-plan workflow removes that rework.",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 14, height: 1.5),
          ),
        ),
        const SizedBox(height: 40),

        // The Cards
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const StepCard(
                number: "01",
                title: "Paste",
                description:
                    "Drop in raw supplier emails, quote sheets, or booking confirmations. No formatting needed - messy is fine.",
              ),
              const SizedBox(height: 16),
              const StepCard(
                number: "02",
                title: "Parse",
                description:
                    "planis.ai reads and structures your content - extracting days, destinations, activities, hotels, and transfers automatically.",
              ),
              const SizedBox(height: 16),
              const StepCard(
                number: "03",
                title: "Refine",
                description:
                    "Review and polish. Edit copy, swap details, adjust the order. Your plan, your voice - just built faster.",
              ),
              const SizedBox(height: 16),
              const StepCard(
                number: "04",
                title: "Publish",
                description:
                    "Send a shareable link, export a branded PDF, or generate an invoice. Clients get a plan worth reading.",
              ),
            ],
          ),
        ),
        const SizedBox(height: 32),
        const Text(
          "Works with messy content. Incomplete data, missing dates, mixed languages - planis.ai handles it.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 11,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
