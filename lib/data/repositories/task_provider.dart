import 'package:flutter/material.dart';
import 'package:plains_ai/data/models/plains_task.dart';
import 'package:plains_ai/data/repositories/task_service.dart';

class TaskProvider extends ChangeNotifier {
  final TaskService _service = TaskService();
  List<PlanisTask> _tasks = [];
  bool _isLoading = false;

  List<PlanisTask> get tasks => _tasks;
  bool get isLoading => _isLoading;

  Future<void> fetchDailyTasks() async {
    _isLoading = true;
    notifyListeners();

    try {
      _tasks = await _service.getTasks();
    } catch (e) {
      debugPrint(e.toString());
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
