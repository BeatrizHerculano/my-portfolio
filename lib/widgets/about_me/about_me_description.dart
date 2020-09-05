import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class AboutMeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lightText =
        Theme.of(context).textTheme.headline5.apply(color: lightBlue);
    var pinkText =
        PinkTextTheme.of(context).headline5.apply(fontWeightDelta: 3);
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              'Sou uma desenvolvedora de software versátil com vontade de ganhar mais conhecimento técnico focado em ',
          style: lightText,
          children: <TextSpan>[
            TextSpan(
                text: 'qualidade e arquitetura de código', style: pinkText),
            TextSpan(
                text:
                    '. Além de programar, eu também participo da comunidade de desenvolvimento dando ',
                style: lightText),
            TextSpan(text: 'palestras', style: pinkText),
            TextSpan(text: ' e fazendo live code na', style: lightText),
            TextSpan(text: ' twitch', style: pinkText),
            TextSpan(text: '. Meu foco tem sido ', style: lightText),
            TextSpan(text: 'Flutter', style: pinkText),
            TextSpan(
                text:
                    ' porém tenho explorado diversas tecnologias mobile, como ',
                style: lightText),
            TextSpan(text: 'Swift e SwiftUI', style: pinkText),
            TextSpan(
                text:
                    '. Sou desenvolvedora backend e quero exporar os horizontes da programação.',
                style: lightText)
          ],
        ));
  }
}
