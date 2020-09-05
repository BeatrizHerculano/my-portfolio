import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/hexagon_card/hexagon_cliper.dart';

class HomePictureBackgroud extends StatelessWidget {
  HomePictureBackgroud({Key key, @required this.width, @required this.height})
      : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HexagonCliper(),
      child: Container(
        color: darkGrey,
        height: height,
        width: width,
      ),
    );
  }
}
