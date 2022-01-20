import 'package:flutter/material.dart';
import 'package:flutter_server_dio/data/model/student.dart';
import 'package:flutter_server_dio/data/provider/student_provider.dart';
import 'package:flutter_server_dio/screen/add_student_page.dart';
import 'package:flutter_server_dio/widget/student_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final studentsProvider = StudentProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Android Expert'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => AddStudentPage(
                studentProvider: studentsProvider,
              ),
            ),
          );
          setState(() {});
        },
        label: Row(
          children: const [
            Icon(Icons.add),
            Text('Add Students'),
          ],
        ),
      ),
      body: FutureBuilder<List<Student>>(
        future: studentsProvider.getStudents(),
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data != null) {
            return ListView.builder(
              padding: const EdgeInsets.only(bottom: 80),
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return StudentCard(student: snapshot.data![index]);
              },
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
