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
        CustomListTile(Icons.home,'Home', (){}),
        CustomListTile(Icons.person,'Profile', (){}),
        CustomListTile(Icons.settings,'Settings', (){}),
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

class CustomListTile extends StatelessWidget {
 final IconData icon;
 final String text;
 final Function onTap;
  CustomListTile(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 0.0),
        child: InkWell(
          splashColor: Colors.orangeAccent,
          // When the user taps the button, show a snackbar
          onTap: onTap,
          child: Container(
              height: 40.0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Icon(icon),
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text(text,
                            style: TextStyle(fontSize: 16.0)),
                      )
                    ]),
                    Icon(Icons.arrow_right),
                  ])),
        ));
  }
}
