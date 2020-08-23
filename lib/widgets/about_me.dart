import 'package:flutter/material.dart';
import 'package:my_cv/widgets/about_me_description.dart';
import 'package:my_cv/widgets/about_me_title.dart';
import 'package:my_cv/widgets/anchor.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';
import 'package:my_cv/widgets/social_media_grid.dart';
import '../constants/social_media_links.dart' as socialMedia;

class AboutMe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var layout = LayoutBuilder(
      builder: (context, constraints) {
        double padding = 200;
        int columns = 3;
        if (constraints.maxWidth < 450) {
          padding = 30;
          columns = 1;
        }
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: padding, vertical: 10),
            child: Column(
              children: [
                Flexible(child: AboutMeTitle()),
                Flexible(
                  child: AboutMeDescription(),
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                    child: Divider(
                      thickness: 1,
                      color: Colors.pink[200],
                    )),
                Expanded(
                    flex: 2,
                    child: SocialMediaGrid(
                      columns: columns,
                    ))
              ],
            ));
      },
    );
    return layout;
  }
}
