import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:plains_ai/data/repositories/task_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plains_ai/presentation/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() => _loadData());
  }

  Future<void> _loadData() async {
    await Future.wait([
      context.read<TaskProvider>().fetchDailyTasks(),
      Future.delayed(const Duration(seconds: 3)),
    ]);

    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const PlanisHomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simple Icon or Logo
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.indigoAccent.withValues(alpha: 0.1),
              ),
              child: Image.asset('assets/logo.png', width: 80, height: 80),
            ),
            const SizedBox(height: 24),
            Text(
              "PLANIS",
              style: GoogleFonts.lexend(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "AI-Driven Productivity",
              style: GoogleFonts.inter(color: Colors.grey, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
