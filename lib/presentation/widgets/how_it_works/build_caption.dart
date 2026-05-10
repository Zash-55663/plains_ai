import 'package:flutter/material.dart';

class BuildCaption extends StatelessWidget {
  final String text;

  const BuildCaption(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.grey, fontSize: 12, height: 1.5),
      ),
    );
  }
}
