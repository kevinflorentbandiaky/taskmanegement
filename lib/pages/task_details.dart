import 'package:flutter/material.dart';

class TaskDetailsPage extends StatelessWidget {
  final Map<String, String> task;

  const TaskDetailsPage({required this.task, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(task['title']!)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${task['title']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description: ${task['description']}'),
            SizedBox(height: 10),
            Text('Start Date: ${task['startDate']}'),
            Text('End Date: ${task['endDate']}'),
          ],
        ),
      ),
    );
  }
}
