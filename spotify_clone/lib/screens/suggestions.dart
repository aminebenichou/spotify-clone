import 'package:flutter/material.dart';
import 'package:spotify_clone/data/albums.dart';

class Sugestions extends StatelessWidget {
  const Sugestions({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: albums.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(albums[index].albumImg),
                            height: 150,
                            width: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              albums[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    );
                  }),
            );
  }
}

class RecentlyPlayed extends StatelessWidget {
  const RecentlyPlayed({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: albums.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image(
                            image: AssetImage(recent[index].albumImg),
                            height: 150,
                            width: 150,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              
                              recent[index].name,
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          
                        ],
                      ),
                    );
                  }),
            );
  }
}