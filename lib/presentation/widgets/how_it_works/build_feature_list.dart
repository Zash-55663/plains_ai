import 'package:flutter/material.dart';
import 'package:plains_ai/presentation/widgets/how_it_works/build_feature_item.dart';

class BuildFeatureList extends StatelessWidget {
  const BuildFeatureList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildFeatureItem(
          icon: Icons.image_search,
          title: "Image search",
          description:
              "Instantly source premium photography for any destination or property.",
          isLast: false,
        ),
        BuildFeatureItem(
          icon: Icons.auto_awesome,
          title: "AI practical info",
          description:
              "Generate health, insurance, packing, visa, and weather guidance — ready to review and apply.",
          isLast: false,
        ),
        BuildFeatureItem(
          icon: Icons.people_outline,
          title: "Import contacts",
          description:
              "Bring existing clients in from CSV with guided headers, duplicate options, and safe merges.",
          isLast: true,
        ),
      ],
    );
  }
}
