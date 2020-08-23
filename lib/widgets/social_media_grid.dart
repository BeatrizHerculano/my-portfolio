import 'package:flutter/material.dart';
import 'package:my_cv/constants/social_media_links.dart';
import 'package:my_cv/widgets/anchor.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class SocialMediaGrid extends StatelessWidget {
  const SocialMediaGrid({Key key, @required this.columns}) : super(key: key);

  final int columns;
  List<Widget> _getLinksSocialMedia(BuildContext context) {
    return socialMediaLinks.entries
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
    return GridView.count(
      crossAxisCount: columns,
      children: _getLinksSocialMedia(context),
      childAspectRatio: 1.75,
      crossAxisSpacing: 200,
      mainAxisSpacing: 100,
    );
  }
}
