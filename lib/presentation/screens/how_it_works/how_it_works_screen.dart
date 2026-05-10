import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_feature_list.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_workflow_switcher.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/how_it_works_header.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/workflow_content.dart';
import '../../widgets/home/build_app_bar.dart';
import '../../widgets/home/build_bottom_nav_widget.dart';

class HowItWorksScreen extends StatefulWidget {
  const HowItWorksScreen({super.key});

  @override
  State<HowItWorksScreen> createState() => _HowItWorksScreenState();
}

class _HowItWorksScreenState extends State<HowItWorksScreen> {
  String _selectedWorkflow = "Delivery";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F7),
      appBar: const BuildAppBarWidget(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            children: [
              const HowItWorksHeader(), // Extracted Header
              const SizedBox(height: 32),

              BuildWorkflowSwitcher(
                activeValue: _selectedWorkflow,
                onChanged: (newValue) =>
                    setState(() => _selectedWorkflow = newValue),
              ),

              const SizedBox(height: 48),

              WorkflowContent(
                selectedWorkflow: _selectedWorkflow,
              ), // Extracted Logic

              const SizedBox(height: 48),
              const BuildFeatureList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BuildBottomNavWidget(),
    );
  }
}
