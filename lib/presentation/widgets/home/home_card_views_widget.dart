import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/widgets/home/build_invoice_generator_widget.dart';
import 'package:plains_ai/presentation/widgets/home/build_itinerary_card_widget.dart';
import 'package:plains_ai/presentation/widgets/home/build_mobile_experience_widget.dart';
import 'package:plains_ai/presentation/widgets/home/build_proposal_preview_widget.dart';

class HomeCardViewsWidget extends StatefulWidget {
  const HomeCardViewsWidget({super.key});

  @override
  State<HomeCardViewsWidget> createState() => _HomeCardViewsWidgetState();
}

class _HomeCardViewsWidgetState extends State<HomeCardViewsWidget> {
  String activeView = 'itinerary';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () => setState(() => activeView = 'itinerary'),
                child: Text(
                  'Itinerary View',
                  style: TextStyle(
                    color: activeView == 'itinerary'
                        ? Colors.blue
                        : Colors.grey,
                    fontWeight: activeView == 'itinerary'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              TextButton(
                onPressed: () => setState(() => activeView = 'proposal'),
                child: Text(
                  'Proposal View',
                  style: TextStyle(
                    color: activeView == 'proposal' ? Colors.blue : Colors.grey,
                    fontWeight: activeView == 'proposal'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => setState(() => activeView = 'invoice'),
                child: Text(
                  'Invoice Generation',
                  style: TextStyle(
                    color: activeView == 'invoice' ? Colors.blue : Colors.grey,
                    fontWeight: activeView == 'invoice'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => setState(() => activeView = 'mobile'),
                child: Text(
                  'Mobile Experience',
                  style: TextStyle(
                    color: activeView == 'mobile' ? Colors.blue : Colors.grey,
                    fontWeight: activeView == 'mobile'
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        if (activeView == 'itinerary')
          const BuildItineraryCardWidget()
        else if (activeView == 'proposal')
          const BuildProposalPreviewWidget()
        else if (activeView == 'invoice')
          const BuildInvoiceGeneratorWidget()
        else if (activeView == 'mobile')
          const BuildMobileExperienceWidget()
        else
          const SizedBox(
            height: 100,
            child: Center(child: Text("Select a view above")),
          ),
      ],
    );
  }
}
