import 'package:appl/Day3/Models/todos.dart';
import 'package:dio/dio.dart';

class TodosServices {
  String baseUrl = "https://jsonplaceholder.typicode.com/";
  Future<List<Todos>> GetAllTodos() async {
    Response response;
    List<Todos> TodosList = [];
    response = await Dio().get(baseUrl + "todos");
    var data = response.data;
    data.forEach((element) {
      TodosList.add(Todos.fromJson(element));
    });
    return TodosList;
  }
}

