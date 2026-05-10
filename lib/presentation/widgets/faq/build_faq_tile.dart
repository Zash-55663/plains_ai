import 'package:flutter/material.dart';
import 'package:plains_ai/data/models/faq_item.dart';

class BuildFAQTile extends StatelessWidget {
  final FAQItem item;

  const BuildFAQTile({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.withValues(alpha: .1)),
      ),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            item.question,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          iconColor: Colors.grey,
          collapsedIconColor: Colors.grey,
          childrenPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          expandedAlignment: Alignment.topLeft,
          children: [
            Text(
              item.answer,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
