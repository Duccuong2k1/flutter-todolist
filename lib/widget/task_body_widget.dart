import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';

class TaskBody extends StatelessWidget {
  TaskBody({
    super.key,
    required this.item,
    required this.handleDelete,
    required this.index,
  });
  var item;
  var index;
  final Function handleDelete;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 74,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: index % 2 == 0 ? Colors.amber : const Color(0xffefefef),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(item.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            InkWell(
              onTap: () async {
                if (await confirm(context)) {
                  handleDelete(item.id);
                } else {
                  return;
                }
              },
              child: const Icon(
                Icons.delete_outlined,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
