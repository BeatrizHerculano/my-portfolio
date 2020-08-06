import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CentralizedCircularProgressIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircularProgressIndicator(),
          Text("Carregando"),
        ],
      ),
    );
  }
}
