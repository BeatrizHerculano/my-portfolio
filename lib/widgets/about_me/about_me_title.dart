import 'package:flutter/material.dart';
import 'package:my_cv/widgets/pink_text_theme.dart';

class AboutMeTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var linhaDeTitulo = Text(
      "Oi! Eu sou a Beatriz Herculano",
      softWrap: true,
      textAlign: TextAlign.center,
      style: PinkTextTheme.of(context).headline2.apply(fontWeightDelta: 3),
    );
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      child: linhaDeTitulo,
    );
  }
}
