import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/home_banner/home_picture_stack.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key key,
    @required this.height,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(children: [
        Container(
          height: 300,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft, colors: [deepPurple, purple])),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: darkGrey,
            height: 100,
          ),
        ),
        HomePictureStack()
      ]),
    );
  }
}
