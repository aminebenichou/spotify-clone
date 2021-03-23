import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:spotify_clone/data/albums.dart';
import 'package:spotify_clone/screens/suggestions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.center,
              colors: [
            Colors.blue[100],
            Colors.grey[900],
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(icon: Icon(Icons.settings_outlined), onPressed: () {})
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Good morning',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Sugestions(),
              Text(
                'Recently played',
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RecentlyPlayed(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 1,
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_up_rounded),
                  onPressed: () {},
                ),
                Row(
                  children: [
                    Text('New Americana ', style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),),
                    Text(' ', style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      
                    ),),
                    Text('Halsey', style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontStyle: FontStyle.normal
                    ), ),
                  ],
                ),
                Container(
                    //margin: EdgeInsets.only(left: 50),
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    IconButton(
                      icon: Icon(Icons.play_arrow_rounded),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.skip_next),
                      onPressed: () {},
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
