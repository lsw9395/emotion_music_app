
import 'package:flutter/material.dart';
import 'package:flutter_app/src/emotion/MusicDataModel.dart';
import 'package:flutter_app/src/emotion/player_widget.dart';

class SongPage extends StatelessWidget {
  final MusicDataModel data;
  SongPage({Key key, @required this.data}) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.title),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(data.imgUrl),
              ),
              Container(
                child: PlayerWidget(url: data.url,),
              )
            ],
          )
        ),
      )
    );
  }
}
