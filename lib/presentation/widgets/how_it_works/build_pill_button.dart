import 'package:flutter/material.dart';

class BuildPillButton extends StatelessWidget {
  final String label;
  final bool isActive;
  final VoidCallback onTap; // Add this

  const BuildPillButton(
    this.label, {
    super.key,
    this.isActive = false,
    required this.onTap, // Add this
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Trigger the callback here
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF1A1A1A) : Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
