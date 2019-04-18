import 'package:flutter/material.dart';

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
          child: Text('This is the drawer header'),
        ),
        ListTile(title: Text('Item 1')),
        ListTile(title: Text('Item 2')),
        ListTile(title: Text('Item 3')),
        ListTile(title: Text('Item 4')),
        ListTile(title: Text('Item 5')),
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
