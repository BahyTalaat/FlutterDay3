import 'package:flutter/material.dart';

class TodosDetails extends StatefulWidget {
  String title;
  TodosDetails({this.title=""});
  @override
  _TodosDetailsState createState() => _TodosDetailsState();
}

class _TodosDetailsState extends State<TodosDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details")),
      body: ListView(children: [Text(widget.title)]),
    );
  }
}
