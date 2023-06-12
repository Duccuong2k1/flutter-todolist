import 'package:flutter/material.dart';

class FloatingBottom extends StatelessWidget {
  FloatingBottom({super.key, required this.addTask});

  final Function addTask;
  // cach 1 su dung onchange cho textField
  String textValue = "";
  // cach 2 sử dung controller của TextEditController
  TextEditingController controller = TextEditingController();
  // handle submit form
  void _handleSubmitFrom(BuildContext context) {
    print("submit form ${controller.text}");
    final name = controller.text;
    if (name.isEmpty) {
      return;
    }
    addTask(name);
// use navigator when add task success then close dialog
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            TextField(
              // onChanged: (value) => textValue = value,
              controller: controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Your task"),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: const ButtonStyle(),
                onPressed: () => _handleSubmitFrom(context),
                child: const Text("Add Task"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
