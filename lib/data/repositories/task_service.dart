import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:plains_ai/data/models/plains_task.dart';

class TaskService {
  // Using a dummy endpoint
  final String _baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<List<PlanisTask>> getTasks() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        // Take only first 5 for the "Daily Plan" feel
        return body.take(5).map((item) => PlanisTask.fromJson(item)).toList();
      } else {
        throw Exception("Failed to load tasks");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
