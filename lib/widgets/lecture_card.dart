import 'package:flutter/material.dart';
import 'package:my_cv/model/lecture.dart';

class LectureCard extends StatelessWidget {
  final Lecture lecture;

  const LectureCard({Key key, @required this.lecture}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.pink[200],
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Text(
              lecture.title,
              textAlign: TextAlign.center,
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
                  child: Text(lecture.description))),
        ]),
      ),
    );
  }
}
