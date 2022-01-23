import 'package:flutter/material.dart';
import 'package:flutter_server_dio/app/module/register/register_controller.dart';
import 'package:get/state_manager.dart';

class RegisterStudentPage extends GetView<RegisterController> {
  const RegisterStudentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Students'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          try {
            final result = await controller.addStudent(
                controller.firstNameController.text,
                controller.lastNameController.text,
                controller.courseController.text,
                14);
            print(result);
            //Navigator.pop(context, result);
          } catch (e) {
            //debugPrint(e.toString());
          }
        },
        label: Row(
          children: const [
            Icon(Icons.check),
            Text('Save'),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.firstNameController,
              decoration: const InputDecoration(label: Text('First Name')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: controller.lastNameController,
              decoration: const InputDecoration(label: Text('Last Name')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: controller.courseController,
              decoration: const InputDecoration(label: Text('Course')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: controller.scoreController,
              decoration: const InputDecoration(label: Text('Score')),
            )
          ],
        ),
      ),
    );
  }
}
