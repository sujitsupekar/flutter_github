import 'package:flutter/cupertino.dart';
import 'package:flutter_github/Project.dart';
import 'package:flutter/material.dart';

 /// This widget displays the list of GitHub projects.
class ProjectListWidget extends StatelessWidget {
  final List<Project> projectList;

  ProjectListWidget({Key key, this.projectList}) : super(key: key);

  void _onTapItem(BuildContext context, Project project) {
    Scaffold
        .of(context)
        .showSnackBar(new SnackBar(content: new Text(project.name)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: projectList.length,
          padding: const EdgeInsets.all(4.0),
          itemBuilder: (context, position) {
            return Card(
              child: ListTile(
                title: Text(
                  '${projectList[position].name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                    color: Colors.deepOrangeAccent,
                  ),
                ),
                subtitle: Text(
                  '${projectList[position].description ?? ''}',
                  style: new TextStyle(
                    fontSize: 18.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                onTap: () => _onTapItem(context, projectList[position]),
              ),
            );
          }),
    );
  }
}
