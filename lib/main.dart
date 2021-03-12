import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp1/models/task_data.dart';
import 'package:todoapp1/screens/task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
