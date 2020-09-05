import 'package:flutter/material.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class AboutMeDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text:
              'Sou uma desenvolvedora de software versátil com vontade de ganhar mais conhecimento técnico focado no ',
          style: Theme.of(context).textTheme.headline5,
          children: <TextSpan>[
            TextSpan(
                text: 'back end',
                style: PinkTextTheme.of(context)
                    .headline5
                    .apply(fontWeightDelta: 3)),
            TextSpan(text: '. Meu stack vai de '),
            TextSpan(
                text: 
                    'NodeJs, .Net Framework a ChatBots com o DialogFlow e o Blip.ai e construção de aplicativos com Flutter',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.pink[200])),
            TextSpan(
                text:
                    '. Além disso sou organizadora da comunidade Flutter Nation e palestrante em varios eventos.')
          ],
        ));
  }
}
