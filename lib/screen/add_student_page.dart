import 'package:flutter/material.dart';
import 'package:flutter_server_dio/data/provider/student_provider.dart';

class AddStudentPage extends StatelessWidget {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final courseController = TextEditingController();
  final scoreController = TextEditingController();

  final StudentProvider studentProvider;

  AddStudentPage({Key? key, required this.studentProvider}) : super(key: key);

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
            final result = await studentProvider.addStudent(
                firstNameController.text,
                lastNameController.text,
                courseController.text,
                int.parse(scoreController.text));
            Navigator.pop(context, result);
          } catch (e) {
            debugPrint(e.toString());
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
              controller: firstNameController,
              decoration: const InputDecoration(label: Text('First Name')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(label: Text('Last Name')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: courseController,
              decoration: const InputDecoration(label: Text('Course')),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              controller: scoreController,
              decoration: const InputDecoration(label: Text('Score')),
            )
          ],
        ),
      ),
    );
  }
}
