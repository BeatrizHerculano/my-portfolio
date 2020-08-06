import 'dart:convert';
import 'package:http/http.dart' as client;
import 'package:my_cv/model/github_api_project.dart';

import 'package:my_cv/model/project.dart';

class ProjectRepository {
  Future<List<Project>> fetch() async {
    var data =
        await client.get("https://api.github.com/users/beatrizherculano/repos");

    List<dynamic> decoded = json.decode(data.body);

    var projectsApi =
        decoded.map((item) => GitHubApiProject.fromJson(item)).toList();
    var projects = projectsApi
        .map((api) => Project(api.name, api.description, api.htmlUrl))
        .toList();
    return projects;
  }
}
