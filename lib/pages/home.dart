import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/about_me/about_me_description.dart';
import 'package:my_cv/widgets/about_me/about_me_title.dart';
import 'package:my_cv/widgets/home_banner/home_banner.dart';
import 'package:my_cv/widgets/twitch_x_developer/twitch_x_developer.dart';

// TODO: ia uma coisa que acho legal você colocar no seu portfolio é: ultimas atividades, dai vc coloca as API's das coisas que vc usa, como spotify, twitter, github e etc. Quando vc escutar uma musica por exemplo, vai mostrar: {HORARIO} Escutando {MUSICA} no spotify {ICON SPOTIFY}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        var detailsPadding =
            constraints.maxWidth > 550 ? constraints.maxWidth * 0.2 : 30;
        var textOrientation =
            constraints.maxWidth > 550 ? TextAlign.center : TextAlign.left;
        return Container(
          height: constraints.maxHeight,
          child: SingleChildScrollView(
            child: Column(
              children: [
                HomeBanner(
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                ),
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                  color: darkGrey,
                  child: AboutMeTitle(),
                ),
                Container(
                  width: constraints.maxWidth,
                  padding: EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: detailsPadding,
                  ),
                  color: darkGrey,
                  child: AboutMeDescription(
                    orientation: textOrientation,
                  ),
                ),
                TwitchxDeveloper(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
