import 'dart:io';

import 'package:flute_music_player/flute_music_player.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/src/blocs/global.dart';
import 'package:flutter_app/src/common/empty_screen.dart';
import 'package:flutter_app/src/models/playerstate.dart';
import 'package:flutter_app/src/ui/all_songs/song_tile.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/src/ui/favorites/favorites_screen.dart';
import 'package:flutter_app/src/ui/Recommends/Recommend_page.dart';
import 'package:flutter_app/src/emotion/angry.dart';
import 'package:flutter_app/src/emotion/test.dart';
class RecommendSongs extends StatelessWidget {
  RecommendSongs({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recommend'),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Test()));
                    },
                    child: Image.asset('assests/images2/neutral.png'),
                  ),
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/angry.png'),
                  ),
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/anxious.png'),
                  ),
                ),
                IconButton(
                    iconSize: 60,
                    onPressed: () {},
                    icon: ImageIcon(AssetImage('assests/images/stress.png'),)
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/happy.png'),
                  ),
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/surprised.png'),
                  ),
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){

                    },
                  ),
                ),
                IconButton(
                    iconSize: 60,
                    onPressed: () {},
                    icon: ImageIcon(AssetImage('assests/images/scared.png'),)
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/hurt.png'),
                  )
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FavoritesScreen()));
                    },
                    child: Image.asset('assests/images2/anxiety.png'),
                  ),
                ),
                Container(
                  width: 75.0,
                  height: 75.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle
                  ),
                  child: FlatButton(
                    textColor: Colors.black,
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>RecommendPage()));
                    },
                    child: Image.asset('assests/images2/search.png'),
                  ),
                ),
                IconButton(
                    iconSize: 60,
                    onPressed: () {},
                    icon: ImageIcon(AssetImage('assests/images/scared.png'),)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
