import 'package:flutter/material.dart';
import 'package:my_cv/widgets/about_me.dart';
import 'package:my_cv/widgets/portfolio.dart';

// TODO: ia uma coisa que acho legal você colocar no seu portfolio é: ultimas atividades, dai vc coloca as API's das coisas que vc usa, como spotify, twitter, github e etc. Quando vc escutar uma musica por exemplo, vai mostrar: {HORARIO} Escutando {MUSICA} no spotify {ICON SPOTIFY}
class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Widget content = AboutMe();
  int index = 0;

  BottomNavigationBarItem _getBottomBarItem(
      {@required String title, @required Icon icon}) {
    return BottomNavigationBarItem(icon: icon, title: Text(title));
  }

  @override
  Widget build(BuildContext context) {
    Map<int, Widget> pages = {0: AboutMe(), 1: Portfolio()};
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: content,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _getBottomBarItem(title: "Sobre Mim", icon: Icon(Icons.person)),
          _getBottomBarItem(title: "Portfólio", icon: Icon(Icons.book))
        ],
        onTap: (tapped) {
          setState(() {
            content = pages[tapped];
            index = tapped;
          });
        },
        currentIndex: index,
      ),
    );
  }
}
