import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Drawer Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
          child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(
                0.8, 0.0), // 10% of the width, so there are ten blinds.
            colors: [
              const Color(0xFFFFFFEE),
              const Color(0xFF999999)
            ], // whitish to gray
            tileMode: TileMode.repeated, // repeats the gradient over the canvas
          )),
          child: Container(
              child: Column(
            children: <Widget>[
              Material(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  elevation: 10,
                  child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Image.asset('images/mediasen-logo.png',
                          width: 92, height: 92))),
              Text('Flutter',
                  style: TextStyle(fontSize: 12.0, color: Colors.white)),
            ],
          )),
        ),

        // CustomListTile(Icons.home, 'Home', () => {}),
        // CustomListTile(Icons.person, 'Profile', () => {}),
        // CustomListTile(Icons.settings, 'Settings', () => {}),

        CustomListTile(icon: categories[0].icon, text: categories[0].title, onTap: () => {}),
        CustomListTile(icon: categories[1].icon, text: categories[1].title, onTap: () => {}),
        CustomListTile(icon: categories[2].icon, text: categories[2].title, onTap: () => {}),
        CustomListTile(icon: categories[3].icon, text: categories[3].title, onTap: () => {}),
        CustomListTile(icon: categories[4].icon, text: categories[4].title, onTap: () => {}),
      ])),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTap;
  CustomListTile({this.icon, this.text, this.onTap});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: Container(
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                color: Colors.grey.shade400,
                width: 2.0,
              )),
            ),
            child: InkWell(
              splashColor: Colors.orangeAccent,
              // When the user taps the button, show a snackbar
              onTap: onTap,
              child: Container(
                  height: 50.0,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Icon(icon),
                          Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Text(text, style: TextStyle(fontSize: 16.0)),
                          )
                        ]),
                        Icon(Icons.arrow_right),
                      ])),
            )));
  }
}

class Category {
  final int id;
  final String title;
  final ColorSwatch color;
  final IconData icon;

  /// Creates a [Category].
  ///
  /// A [Category] saves the title of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // While the  checks for whether a titled parameter is passed in,
  // it doesn't check whether the object passed in is null. We check that
  // in the assert statement.
  Category({
    this.id,
    this.title,
    this.color,
    this.icon,
  });
}

List<Category> categories = [
  Category(
    id: 1,
    title: "ACCUEIL",
    color: Colors.red,
    icon: FontAwesomeIcons.home,
  ),
  Category(
    id: 2,
    title: "ECONOMIE",
    color: Colors.red,
    icon: FontAwesomeIcons.landmark  
    ),
  Category(
    id: 3,
    title: "SCIENCE & HIGH-TECH",
    color: Colors.red,
    icon: FontAwesomeIcons.atom
  ),
  Category(
    id: 4,
    title: "SPORTS",
    color: Colors.red,
    icon: FontAwesomeIcons.running,
  ),
  Category(
      id: 5,
      title: "ARTS & CULTURE",
      color: Colors.red,
      icon: FontAwesomeIcons.artstation
      )
];
