import 'package:flutter/material.dart';

class ShowcaseCores extends StatelessWidget {
  final roxoEscuro = Color(0xFF4E2D5E);
  final azulClaro = Color(0xFFF2FCFF);
  final pink = Color(0xFFEE8DBF);
  final roxo = Color(0xFF8C5196);
  final preto = Color(0xFF2B2B2B);
  final pgrossa = TextStyle(fontSize: 24);
  Widget _getContainer(Color color, Text text) {
    return Container(
      color: color,
      child: Center(child: text),
      height: 200,
      width: double.infinity,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _getContainer(
                roxoEscuro,
                Text(
                  "Oi eu sou a bia",
                  style: pgrossa.apply(color: azulClaro),
                )),
            Divider(
              color: Colors.white,
            ),
            _getContainer(
                preto,
                Text(
                  "Oi eu sou a bia",
                  style: pgrossa.apply(color: pink),
                )),
            Divider(
              color: Colors.white,
            ),
            _getContainer(
                preto,
                Text(
                  "Oi eu sou a bia",
                  style: pgrossa.apply(color: azulClaro),
                )),
            Divider(
              color: Colors.white,
            ),
            _getContainer(
                roxo,
                Text(
                  "Oi eu sou a bia",
                  style: pgrossa.apply(color: azulClaro),
                )),
          ],
        ),
      ),
    );
  }
}
