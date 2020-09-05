import 'package:flutter/material.dart';
import 'package:my_cv/constants/palette.dart';
import 'package:my_cv/widgets/about_me/about_me_title.dart';
import 'package:my_cv/widgets/showcase_cores.dart';
import 'package:my_cv/widgets/home_banner/home_banner.dart';

// TODO: ia uma coisa que acho legal você colocar no seu portfolio é: ultimas atividades, dai vc coloca as API's das coisas que vc usa, como spotify, twitter, github e etc. Quando vc escutar uma musica por exemplo, vai mostrar: {HORARIO} Escutando {MUSICA} no spotify {ICON SPOTIFY}
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget content = ShowcaseCores();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
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
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  color: darkGrey,
                  child: AboutMeTitle(),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
