import 'dart:convert';

List<Todos> todosFromJson(String str) => List<Todos>.from(json.decode(str).map((x) => Todos.fromJson(x)));


class Todos {
    Todos({
        required this.userId,
        required this.id,
        required this.title,
        required this.completed,
    });

    int userId;
    int id;
    String title;
    bool completed;

    factory Todos.fromJson(Map<String, dynamic> json) => Todos(
        userId: json["userId"] == null ? null : json["userId"],
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        completed: json["completed"] == null ? null : json["completed"],
    );

}