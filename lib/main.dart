import 'package:flutter/material.dart';
import 'package:my_cv/widgets/about_me.dart';
import 'package:my_cv/widgets/portfolio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sobre mim',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.pink,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme()),
      routes: {
        "/": (context) => MyHomePage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget content = AboutMe();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Center(child: content),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'www.google.com',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("Sobre Mim")),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text("Portfólio"))
        ],
        onTap: (tapped) {
          if (tapped == 1) {
            setState(() {
              content = Portfolio();
              index = tapped;
            });
          } else {
            setState(() {
              content = AboutMe();
              index = tapped;
            });
          }
        },
        currentIndex: index,
      ),
    );
  }
}
