import 'package:flutter/material.dart';
import 'package:my_cv/widgets/hexagon_card/hexagon_card.dart';

class HomePicture extends StatelessWidget {
  const HomePicture({Key key, @required this.height, @required this.width})
      : super(key: key);

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return HexagonCard(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.black12,
            image: DecorationImage(
                image: AssetImage('assets/myPicture.jpg'), fit: BoxFit.cover)),
      ),
    );
  }
}
