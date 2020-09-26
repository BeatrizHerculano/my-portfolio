import 'package:flutter/material.dart';
import 'package:my_cv/constants/social_media_links.dart';
import 'package:my_cv/widgets/anchor.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class SocialMediaGrid extends StatelessWidget {
  const SocialMediaGrid({Key key, @required this.columns}) : super(key: key);

  final int columns;
  List<Widget> _getLinksSocialMedia(BuildContext context) {
    return socialMediaLinks.entries
        .map((entry) => Container(
              height: 100,
              width: 200,
              child: Anchor(
                  entry.value,
                  Text(
                    entry.key,
                    style: PinkTextTheme.of(context).headline6,
                  )),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    if (columns > 1) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [..._getLinksSocialMedia(context)],
      );
    }
    else{
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [..._getLinksSocialMedia(context)],
      );
    }
  }
}
