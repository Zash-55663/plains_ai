import 'package:flutter/material.dart';
import 'build_pill_button.dart';

class BuildWorkflowSwitcher extends StatelessWidget {
  final String activeValue;
  final ValueChanged<String> onChanged;

  const BuildWorkflowSwitcher({
    super.key,
    required this.activeValue,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 8,
      children: [
        BuildPillButton(
          "Delivery",
          isActive: activeValue == "Delivery",
          onTap: () => onChanged("Delivery"),
        ),
        BuildPillButton(
          "AI Assist",
          isActive: activeValue == "AI Assist",
          onTap: () => onChanged("AI Assist"),
        ),
        BuildPillButton(
          "Discovery",
          isActive: activeValue == "Discovery",
          onTap: () => onChanged("Discovery"),
        ),
        BuildPillButton(
          "Import Contacts",
          isActive: activeValue == "Import Contacts",
          onTap: () => onChanged("Import Contacts"),
        ),
      ],
    );
  }
}
