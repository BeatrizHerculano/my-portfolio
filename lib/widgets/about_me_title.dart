import 'package:flutter/material.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class AboutMeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var beatrizherculano = Text(
      "Beatriz Herculano",
      style: PinkTextTheme.of(context).headline3,
    );

    var greeting = Text(
      "Oi! Eu sou a ",
      style: Theme.of(context).textTheme.headline3,
    );
    var linhaDeTitulo = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [greeting, beatrizherculano]);

    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: linhaDeTitulo,
    );
  }
}
