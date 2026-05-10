import 'package:flutter/material.dart';
import 'package:plains_ai/data/repositories/task_provider.dart';
import 'package:plains_ai/presentation/widgets/home/build_app_bar.dart';
import 'package:plains_ai/presentation/widgets/home/build_bottom_nav_widget.dart';
import 'package:plains_ai/presentation/widgets/home/build_hero_section_widget.dart';
import 'package:plains_ai/presentation/widgets/home/home_card_views_widget.dart';
import 'package:provider/provider.dart';

class PlanisHomeScreen extends StatefulWidget {
  const PlanisHomeScreen({super.key});

  @override
  State<PlanisHomeScreen> createState() => _PlanisHomeScreenState();
}

class _PlanisHomeScreenState extends State<PlanisHomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<TaskProvider>().fetchDailyTasks();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(
          0xFFF9F9F7,
        ), // Updated to match Planis.ai light theme
        appBar: const BuildAppBarWidget(),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const BuildHeroSectionWidget(), // The new landing page text
                const SizedBox(height: 30),
                const HomeCardViewsWidget(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BuildBottomNavWidget(),
      ),
    );
  }
}
