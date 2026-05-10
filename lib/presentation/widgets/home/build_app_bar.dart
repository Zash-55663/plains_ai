import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BuildAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const BuildAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildAppBar());
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

PreferredSizeWidget _buildAppBar() {
  return AppBar(
    backgroundColor: const Color.fromARGB(249, 241, 239, 239),
    elevation: 0,
    title: Text(
      "Planis",
      style: GoogleFonts.lexend(fontWeight: FontWeight.bold, fontSize: 22),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 16),
        child: CircleAvatar(
          backgroundColor: Colors.indigoAccent.withValues(alpha: 0.2),
          child: const Icon(Icons.person_outline, color: Colors.indigoAccent),
        ),
      ),
    ],
  );
}
