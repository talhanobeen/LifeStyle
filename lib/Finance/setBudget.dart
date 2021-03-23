import 'package:flutter/material.dart';

class setBudget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return setBudgetState();
  }
}

class setBudgetState extends State<setBudget> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text("OneStop "),
        ),
      ),
    ));
  }
}
