import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';

class Developer extends StatelessWidget {
  final double parentHeight;
  final double parentWidth;

  const Developer(
      {Key key, @required this.parentHeight, @required this.parentWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.headline4.apply(color: lightBlue);

    var padding = this.parentWidth * 0.1;
    if (this.parentWidth < 570) {
      return Container(
        height: 1500,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: padding / 2, vertical: 30),
              child: Text(
                'Eu passei bastante tempo trabalhando sem um time, mesmo amando trabalhar junto dos meus colegas, isso me fez bastante independente. Nessa epoca eu tambem aprendia lidar co decisões tecnicas como que lingagem usar e qual vai ser a arquitetura do codigo, como eu era estagiaria parte dessas decisões form erradas, mas elas me ajudaram a me tornar uma desenvolvedora melhor. No ambiente de trabalho sempre a pepssoa que vai fazer piadas, mandar mensagem demotivacional de bom dia e ajudar meus colegas, eu amo parear e gosto de separar bastante os momentos de brincar e de ser séria.',
                style: style,
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
        height: 500,
        child: Column(
          children: [
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: padding / 4, vertical: 30),
              child: Text(
                'Eu passei bastante tempo trabalhando sem um time, mesmo amando trabalhar junto dos meus colegas, isso me fez bastante independente. Nessa epoca eu tambem aprendia lidar co decisões tecnicas como que lingagem usar e qual vai ser a arquitetura do codigo, como eu era estagiaria parte dessas decisões form erradas, mas elas me ajudaram a me tornar uma desenvolvedora melhor. No ambiente de trabalho sempre a pepssoa que vai fazer piadas, mandar mensagem demotivacional de bom dia e ajudar meus colegas, eu amo parear e gosto de separar bastante os momentos de brincar e de ser séria.',
                style: style,
              ),
            )
          ],
        ),
      );
    }
  }
}
