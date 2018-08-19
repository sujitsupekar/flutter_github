# flutter_github

Flutter sample application to show Git hub projects.

This sample app demonstrates how to do Asynchronous operations using [Future](https://api.dartlang.org/stable/2.0.0/dart-async/Future-class.html), 
[async await](https://www.dartlang.org/articles/language/await-async) and [compute](https://docs.flutter.io/flutter/foundation/compute.html) function.

There are two Async patterns in Flutter to do Asynchronous processing.
Checkout [Flutter Async Widgets](https://flutter.io/widgets/async/)

In this sample app, I have done Asynchronous operations using [**Future**](https://api.dartlang.org/stable/2.0.0/dart-async/Future-class.html)

Following main classes in this Sample application.

**GitHubService**

This class is interacting with GitHub. Fetches the list of the projects from the GitHub of a given User name.
Convert http.response into a list of the **Project** model.

Parsing and conversion into a background isolate using the compute function provided by Flutter.
The compute function will run expensive functions in a background isolate and return the result.

In the sample app, executed the parseProjects function in the background.

**ProjectListWidget**

This widget displays Projects in the vertical list using ListView.

## Getting Started with Flutter

For help getting started with Flutter, view our online
[documentation](https://flutter.io/).
