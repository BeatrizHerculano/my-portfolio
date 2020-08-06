import 'package:flutter/material.dart';

class PinkTextTheme {
  static TextTheme of(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .apply(displayColor: Colors.pink[200], bodyColor: Colors.pink[200]);
  }
}
