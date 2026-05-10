import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_ai_assist_card.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_caption.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_discovery_card.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_import_contacts_card.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_workflow_card.dart';

class WorkflowContent extends StatelessWidget {
  final String selectedWorkflow;

  const WorkflowContent({super.key, required this.selectedWorkflow});

  @override
  Widget build(BuildContext context) {
    if (selectedWorkflow == "Delivery") {
      return const Column(
        children: [
          BuildWorkflowCard(),
          BuildCaption(
            "Premium proposal themes, public share links, PDF export, and client-ready delivery - all in one flow.",
          ),
        ],
      );
    } else if (selectedWorkflow == "AI Assist") {
      return const Column(
        children: [
          BuildAIAssistCard(),
          BuildCaption(
            "AI structures multi-day itineraries instantly — complete with timing, logistics, and practical details.",
          ),
        ],
      );
    } else if (selectedWorkflow == "Discovery") {
      return const Column(
        children: [
          BuildDiscoveryCard(),
          BuildCaption(
            "Search, compare, and attach hotels, visuals, and experiences without leaving the workspace.",
          ),
        ],
      );
    } else if (selectedWorkflow == "Import Contacts") {
      return const Column(
        children: [
          BuildImportContactsCard(),
          BuildCaption(
            "Upload a CSV to bulk-import clients into your directory - with clear rules, duplicate handling, and a sample template.",
          ),
        ],
      );
    } else {
      return const SizedBox(
        height: 200,
        child: Center(
          child: Text("Coming Soon", style: TextStyle(color: Colors.grey)),
        ),
      );
    }
  }
}
