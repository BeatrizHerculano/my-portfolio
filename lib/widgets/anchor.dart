import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:js' as js;

import 'package:my_cv/constants/palette.dart';

class Anchor extends RaisedButton {
  final String url;
  final Widget child;

  Anchor(this.url, this.child)
      : super(
          color: Color(0xFF303030),
          child: child,
          onPressed: () {
            js.context.callMethod("open", [url]);
          },
        );
}
