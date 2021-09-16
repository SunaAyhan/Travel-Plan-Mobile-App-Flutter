class Task {
  bool? completed = false;
  var title = '';
  var description = '';
  DateTime? date;
  var id = 0;

  Task(
      {this.completed,
      required this.title,
      required this.description,
      this.date,
      required this.id});
}
