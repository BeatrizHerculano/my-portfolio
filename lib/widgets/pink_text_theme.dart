import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';

class PinkTextTheme {
  static TextTheme of(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .apply(displayColor: Colors.pink[200], bodyColor: pink);
  }
}
