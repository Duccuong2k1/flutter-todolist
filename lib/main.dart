import 'package:flutter/material.dart';
import 'package:project_todolist/modal/items.dart';

import 'widget/task_body_widget.dart';
import 'widget/task_floating_dialog.dart';

// void main() {
//   runApp(const MyApp());
// }

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
// use Satefullwidget để có thể cập nhật lại ui khi có thay đổi

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<DataItems> items = [];

  void _handleAddTask(String name) {
    final newTask = DataItems(id: DateTime.now().toString(), name: name);
    setState(() {
      items.add(newTask);
    });
  }

  void _handleDeleteTask(String id) {
    setState(() {
      items.removeWhere((item) => item.id == id);
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text("TodoList", style: TextStyle(fontSize: 40)),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: items
              .map((item) => TaskBody(
                    index: items.indexOf(item),
                    item: item,
                    handleDelete: _handleDeleteTask,
                  ))
              .toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            isScrollControlled: true,
            context: context,
            builder: (BuildContext content) {
              return FloatingBottom(
                addTask: _handleAddTask,
              );
            },
          );
        },
        backgroundColor: Colors.amber,
        child: const Icon(
          Icons.add,
          size: 40,
        ),
      ),
    );
  }
}
