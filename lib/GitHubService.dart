import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';

import 'package:flutter_github/Project.dart';
import 'package:http/http.dart' as http;

/// This helper function convert a response body into the List<Project>
List<Project> parseProjects(String responseBody) {
  final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<Project>((json) => Project.fromJson(json)).toList();
}

/// Fetch the list of the projects of a given User name from the GitHub
Future<List<Project>> getProjectList(String userName) async {
  final response = await http.get("https://api.github.com/users/$userName/repos");

  if (response.statusCode == 200) {
    // If server returns an OK response, parse the JSON
    return compute(parseProjects, response.body);
  } else {
    // If that response was not OK, throw an error.
    throw Exception('Failed to load post');
  }
}
