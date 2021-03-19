
class TodosClass {
  bool completed;
  int id;
  String title;
  int userId;

  TodosClass.fromJSON(Map<String, dynamic> parsedJson) {
    this.completed = parsedJson['completed'];
    this.id = parsedJson['id'];
    this.title = parsedJson['title'];
    this.userId = parsedJson['userId'];
  }
}