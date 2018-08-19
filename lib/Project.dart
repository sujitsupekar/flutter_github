/// This is a JSON model class to parse the server response
class Project {
  int id;
  String name;
  String description;
  String language;

  Project({this.id, this.name, this.description, this.language});

  factory Project.fromJson(Map<String, dynamic> json) {
    return Project(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      language: json['language'],
    );
  }
}
