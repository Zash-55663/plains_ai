import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:plains_ai/data/models/plains_task.dart';

class TaskServices {
  final String _baseUrl = "https://jsonplaceholder.typicode.com/todos";

  Future<List<PlainsTask>> getTasks() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return data.map((json) => PlainsTask.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load tasks');
      }
    } catch (e) {
      throw Exception('Error fetching tasks: $e');
    }
  }
}
