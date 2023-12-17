import 'package:flutter/material.dart';
import 'package:myapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox(
      {super.key,
      required this.controller,
      required this.onAdd,
      required this.onCancel});

  final TextEditingController controller;
  final VoidCallback onAdd;
  final VoidCallback onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: SizedBox(
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextField(
                controller: controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Add a new task',
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    title: 'Cancel',
                    onPressed: onCancel,
                  ),
                  MyButton(
                    title: 'Add',
                    onPressed: onAdd,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
