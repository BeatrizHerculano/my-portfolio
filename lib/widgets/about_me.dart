import 'package:flutter/material.dart';
import 'package:my_cv/widgets/about_me_description.dart';
import 'package:my_cv/widgets/anchor.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';
import '../constants/social_media_links.dart' as socialMedia;

class AboutMe extends StatelessWidget {
  List<Widget> _getLinksSocialMedia(BuildContext context) {
    return socialMedia.socialMediaLinks.entries
        .map((entry) => Anchor(
            entry.value,
            Text(
              entry.key,
              style: PinkTextTheme.of(context).headline6,
            )))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 200),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsetsDirectional.only(end: 10),
                      child: Text(
                        "Oi! Eu sou a",
                        style: Theme.of(context).textTheme.headline3,
                      )),
                  Text(
                    "Beatriz Herculano",
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        .apply(color: Colors.pinkAccent[100]),
                  )
                ])),
            Row(children: [
              Expanded(
                child: AboutMeDescription(),
              ),
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                child: Divider(
                  thickness: 1,
                  color: Colors.pink[200],
                )),
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              children: _getLinksSocialMedia(context),
              childAspectRatio: 1.75,
              crossAxisSpacing: 200,
              mainAxisSpacing: 100,
            ))
          ],
        ));
  }
}
