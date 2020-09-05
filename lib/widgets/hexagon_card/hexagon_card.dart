import 'package:flutter/material.dart';
import 'package:my_cv/widgets/hexagon_card/hexagon_cliper.dart';
import 'package:my_cv/widgets/hexagon_card/shadow_painter.dart';

class HexagonCard extends StatelessWidget {
  HexagonCard({
    Key key,
    @required this.child,
  }) : super(key: key);

  final Shadow shadow =
      Shadow(blurRadius: 10, offset: Offset(0, 0), color: Colors.black);
  final Widget child;
  final CustomClipper<Path> clipper = HexagonCliper();
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      key: UniqueKey(),
      painter: ShadowPainter(this.shadow, this.clipper),
      child: ClipPath(child: child, clipper: this.clipper),
    );
  }
}
