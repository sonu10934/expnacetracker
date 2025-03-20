import 'package:flutter/material.dart';

class AddExpense extends StatelessWidget {
  const AddExpense({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Theme.of(context).colorScheme.surface),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 26, horizontal: 10),
        child: Column(children: [Text("Add Expe")]),
      ),
    );
  }
}
