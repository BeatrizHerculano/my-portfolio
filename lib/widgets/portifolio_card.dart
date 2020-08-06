import 'package:flutter/material.dart';
import 'package:my_cv/model/project.dart';
import 'package:my_cv/widgets/anchor.dart';

class PortifolioCard extends StatelessWidget {
  const PortifolioCard({Key key, @required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.pink[200],
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              project.title,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  .apply(fontSizeFactor: 0.25, color: Colors.pink),
            ),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Flexible(
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Text(project.description))),
          Anchor(
              project.link,
              Text(
                "Link",
                style: TextStyle(color: Colors.pink),
              ))
        ]),
      ),
    );
  }
}
