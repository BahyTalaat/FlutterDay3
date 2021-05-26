import 'package:appl/Day3/Models/todos.dart';
import 'package:appl/Day3/Services/todosService.dart';
import 'package:appl/Day3/View/TodosCard.dart';
import 'package:appl/Day3/View/TodosDetails.dart';
import 'package:flutter/material.dart';

class TodosScreen extends StatefulWidget {
  @override
  _TodosScreenState createState() => _TodosScreenState();
}

class _TodosScreenState extends State<TodosScreen> {
  bool isLoading = true;
  List<Todos> todosList = [];
  getTodos() async {
    todosList = await TodosServices().GetAllTodos();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: todosList.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TodosDetails(title: todosList[index].title)));
                    },
                    child: Padding(
                        padding: EdgeInsets.all(8),
                        child: TodosCard(
                            ID: todosList[index].id,
                            title: todosList[index].title)));
              },
            ),
    );
  }
}
