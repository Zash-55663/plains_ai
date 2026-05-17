class PlainsTask {
  final String id;
  final String title;
  final String description;
  final bool isCompleted;

  PlainsTask({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
  });

  factory PlainsTask.fromJson(Map<String, dynamic> json) {
    return PlainsTask(
      id: json['id'],
      title: json['title'],
      description: json['description'] ?? '',
      isCompleted: json['isCompleted'] ?? false,
    );
  }
}
