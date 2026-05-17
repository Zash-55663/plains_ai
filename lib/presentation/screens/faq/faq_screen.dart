import 'package:flutter/material.dart';
import 'package:plains_ai/data/models/faq_model.dart';

import '../../widgets/widgets.dart';

class FAQScreen extends StatelessWidget {
  final List<FaqModel> faqs = [
    FaqModel(
      question: "Do I need a client to start creating?",
      answer:
          "No. Creator Mode lets you build plans without a client attached. Add a client later, or use it as internal inventory.",
    ),
    FaqModel(
      question: "What if I don't have dates yet?",
      answer:
          "You can create flexible itineraries without fixed dates. Simply define the sequence of days and add specific dates when they are confirmed.",
    ),
    FaqModel(
      question: "Can I edit the plan before exporting the PDF?",
      answer:
          "Absolutely. You have full control over every detail, photo, and text block before you generate the final shareable link or PDF.",
    ),
    FaqModel(
      question: "What currencies do you support?",
      answer:
          "You can set any currency for plans and invoices - USD, EUR, GBP, AED, SAR, PKR, INR, and more.",
    ),
    FaqModel(
      question: "What are credits used for?",
      answer:
          "Credits are used when creating or fully regenerating a plan. Editing, PDF export, invoicing, and sharing are always free.",
    ),
    FaqModel(
      question: "What are the differences between Creator and Creator Pro?",
      answer:
          "Creator is the entry plan for travel creators building momentum. Creator Pro is built for higher-volume workflows, with more capacity and earlier access to selected new features.",
    ),
    FaqModel(
      question: "Can I paste a supplier or DMC email?",
      answer:
          "Yes. Paste raw text from any supplier, DMC email, or PDF content. planis.ai structures it into editable plan sections you refine and publish.",
    ),
    FaqModel(
      question: "How many plans designs are included?",
      answer: "Plan and invoice designs introduced regularly. Always evolving.",
    ),
    FaqModel(
      question: "Is this a CRM?",
      answer:
          "No. planis.ai is a plan studio with built-in invoicing. If you need CRM, booking, or commission tracking, pair planis.ai with the CRM you already use.",
    ),
    FaqModel(
      question: "Is there a free plan?",
      answer:
          "No. planis.ai is a paid product. Both plans include a 7-day trial with 2 free plans so you can experience the full workflow before your subscription begins.",
    ),
    FaqModel(
      question: "Which payment methods do you accepted?",
      answer:
          "We use Stripe for secure billing. Most Visa and Mastercard debit and credit cards with international transactions enabled are accepted. If your card is declined, check that international payments are enabled in your banking app.",
    ),
    FaqModel(
      question: "Can I cancel anytime?",
      answer:
          "Yes. Cancel from your billing settings. Your access continues until the end of your billing period. Your saved work stays with you.",
    ),
  ];

  FAQScreen({super.key});

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
              "Questions travel specialists ask",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                fontFamily: 'Serif',
              ),
            ),
            const SizedBox(height: 48),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: faqs.length,
              itemBuilder: (context, index) => BuildFAQTile(item: faqs[index]),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BuildBottomNavWidget(),
    );
  }
}
