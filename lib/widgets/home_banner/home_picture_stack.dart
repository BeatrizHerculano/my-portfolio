import 'package:flutter/material.dart';
import 'package:my_cv/widgets/home_banner/home_picture.dart';
import 'package:my_cv/widgets/home_banner/home_picture_background.dart';
import 'package:my_cv/widgets/twitch_x_developer/twitch_x_developer.dart';

// ignore: must_be_immutable
class HomePictureStack extends StatelessWidget {
  final double topOffset = 30;
  final double leftOffset = 40;

  final pictureHeight = 300.0;
  final pictureWidth = 200.0;

  double _left = 0;
  double _top = 0;
  double _topOffseted = 0;
  double _leftOffsetted = 0;

  void _calculatePositionWithoutOffset(double height, double width) {
    var widthWithoutPictureSize = width - pictureWidth;
    _left = widthWithoutPictureSize * 0.5;
    _top = height * 0.25;
  }

  void _calculatePositionWithtOffset() {
    _topOffseted = _top - topOffset;
    _leftOffsetted = _left - (leftOffset / 2);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      var height = constraints.maxHeight;
      var width = constraints.maxWidth;

      _calculatePositionWithoutOffset(height, width);
      _calculatePositionWithtOffset();

      return Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned(
                top: _topOffseted,
                left: _leftOffsetted,
                child: HomePictureBackgroud(
                  height: pictureHeight + topOffset,
                  width: pictureWidth + leftOffset,
                )),
            Positioned(
                top: _top,
                left: _left,
                child: HomePicture(
                  height: pictureHeight,
                  width: pictureWidth,
                )),
          ],
        ),
      );
    });
  }
}
