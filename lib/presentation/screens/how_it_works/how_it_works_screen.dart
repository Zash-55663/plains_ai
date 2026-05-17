import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

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
