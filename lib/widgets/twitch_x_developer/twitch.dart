import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';

class Twitch extends StatelessWidget {
  final double parentHeight;
  final double parentWidth;

  const Twitch(
      {Key key, @required this.parentHeight, @required this.parentWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.headline4.apply(color: lightBlue);
    var text = Text(
      'Minhas lives na Twitch são divertidas e descontraidas. Eu mostro conteúdo que eu estou estudando e, até mesmo, aprendo coisas em live. Quero mostrar que nao existe vergonha em nao saber as coisas, que mesmo com meu tempo de carreia o StackOverflow ajuda bastante, porém quero mostrar que as docs das ferramentas que usamos podem ser sua melhor amiga!',
      style: style,
      textAlign: TextAlign.left,
      softWrap: true,
    );
    var image = Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('morango.png'))),
    );
    var padding = this.parentWidth * 0.1;
    if (this.parentWidth < 570) {
      return Container(
          height: parentWidth * 3,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: padding / 2, vertical: 30),
                  child: text,
                ),
              ),
              Flexible(
                child: image,
              ),
            ],
          ));
    } else {
      return Container(
        height: 550,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: padding / 8, vertical: 30),
                child: Column(
                  children: [text],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  children: [image],
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
