import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plains_ai/data/repositories/task_provider.dart';
import 'package:provider/provider.dart';

class BuildTaskListWidget extends StatelessWidget {
  const BuildTaskListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(
      builder: (context, provider, child) {
        if (provider.isLoading) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.indigoAccent),
          );
        }

        if (provider.tasks.isEmpty) {
          return const Center(
            child: Text(
              "No tasks for today",
              style: TextStyle(color: Colors.grey),
            ),
          );
        }

        return ListView.separated(
          itemCount: provider.tasks.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final task = provider.tasks[index];
            return Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF161616),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white.withValues(alpha: .05)),
              ),
              child: Row(
                children: [
                  Icon(
                    task.isCompleted
                        ? Icons.check_circle
                        : Icons.circle_outlined,
                    color: task.isCompleted
                        ? Colors.greenAccent
                        : Colors.indigoAccent,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      task.title,
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 15,
                        decoration: task.isCompleted
                            ? TextDecoration.lineThrough
                            : null,
                      ),
                    ),
                  ),
                  Text(
                    task.time,
                    style: GoogleFonts.inter(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
