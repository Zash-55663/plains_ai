class PlanisTask {
  final int id;
  final String title;
  final String time;
  final bool isCompleted;

  PlanisTask({
    required this.id,
    required this.title,
    required this.time,
    this.isCompleted = false,
  });

  factory PlanisTask.fromJson(Map<String, dynamic> json) {
    return PlanisTask(
      id: json['id'],
      title: json['title'],
      time: json['time'] ?? "09:00 AM",
      isCompleted: json['completed'] ?? false,
    );
  }
}
