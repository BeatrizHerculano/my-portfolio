import 'package:flutter/material.dart';
import 'package:my_cv/constants/lecture_list.dart';
import 'package:my_cv/model/project.dart';
import 'package:my_cv/repository/projects_repository.dart';
import 'package:my_cv/widgets/centralized_circular_progress_indicator.dart';
import 'package:my_cv/widgets/lecture_card.dart';
import 'package:my_cv/widgets/portfolio_list_view.dart';

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 200),
        child: Column(
          children: [
            Text(
              "Projetos",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .apply(color: Colors.pink[200]),
            ),
            Container(
              height: 450,
              child: FutureBuilder<List<Project>>(
                  future: ProjectRepository().fetch(),
                  builder: (BuildContext _, AsyncSnapshot snapshot) {
                    if (snapshot.hasError) {
                      print(snapshot.error);
                    }
                    switch (snapshot.connectionState) {
                      case ConnectionState.none:
                        return Text("nome");
                        break;
                      case ConnectionState.active:
                        return Text("nome");
                        break;
                      case ConnectionState.waiting:
                        return CentralizedCircularProgressIndicator();
                        break;
                      case ConnectionState.done:
                        return PortfolioListView(
                          projects: snapshot.data,
                        );
                        break;
                      default:
                        return Text("nome");
                    }
                  }),
            ),
            Text(
              "Palestras",
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .apply(color: Colors.pink[200]),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                padding: EdgeInsets.all(50),
                scrollDirection: Axis.horizontal,
                itemCount: lectures.length,
                itemBuilder: (_, i) {
                  return Container(
                      padding: EdgeInsets.all(40),
                      width: 400,
                      child: LectureCard(lecture: lectures[i]));
                },
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
