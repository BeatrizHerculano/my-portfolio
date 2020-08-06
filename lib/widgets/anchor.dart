import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:js' as js;

class Anchor extends OutlineButton {
  final String url;
  final Widget child;

  Anchor(this.url, this.child)
      : super(
          child: child,
          onPressed: () {
            js.context.callMethod("open", [url]);
          },
          borderSide: BorderSide(color: Colors.pink[200]),
          hoverColor: Colors.pink[50],
        );
}
