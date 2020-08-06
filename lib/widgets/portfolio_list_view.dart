import 'package:flutter/material.dart';
import 'package:my_cv/model/project.dart';
import 'package:my_cv/widgets/portifolio_card.dart';

class PortfolioListView extends StatelessWidget {
  const PortfolioListView({Key key, this.projects}) : super(key: key);

  final List<Project> projects;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(50),
      scrollDirection: Axis.horizontal,
      itemCount: projects.length,
      itemBuilder: (_, i) {
        return Container(
            padding: EdgeInsets.all(40),
            width: 400,
            child: PortifolioCard(project: projects[i]));
      },
      shrinkWrap: true,
    );
  }
}
