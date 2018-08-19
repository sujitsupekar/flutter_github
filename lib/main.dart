import 'package:flutter/material.dart';
import 'package:flutter_github/Project.dart';
import 'package:flutter_github/ProjectListWidget.dart';
import 'GitHubService.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // Note: Change userName and get the projects associated with that user
  // For example: Google, JakeWharton etc. or give your own GitHub user name if available.
  static const userName = 'Google';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('GitHub Projects'),
        ),
        body: FutureBuilder<List<Project>>(
          future: getProjectList(userName),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? ProjectListWidget(projectList: snapshot.data)
                : Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }
}
