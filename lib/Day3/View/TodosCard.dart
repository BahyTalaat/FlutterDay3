import 'package:flutter/material.dart';

class TodosCard extends StatefulWidget {
  int ID;
  String title;
  TodosCard({this.title="",this.ID=0});
  @override
  _TodosCardState createState() => _TodosCardState();
}

class _TodosCardState extends State<TodosCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("${widget.ID}"),
          Text(widget.title)
        ],
      ),
    );
  }
}
