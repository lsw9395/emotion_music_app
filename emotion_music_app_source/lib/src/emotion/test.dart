import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/src/emotion/MusicDataModel.dart';
import 'package:flutter_app/src/emotion/player_widget.dart';
import 'package:flutter_app/src/emotion/song_page.dart';
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  AudioPlayer advancedPlayer = AudioPlayer();
  static List<String> title = ['윤하 - 사건의 지평선.mp3','스물다섯 스물하나.mp3','이하이 - 한숨.mp3','아이유 - 밤편지.mp3','행복하지말아요.mp3'];
  static List url = ['https://drive.google.com/uc?export=download&id=1_uKNGjhdLO5mXjr4p8V8zr4LPKCtcbvt',
  'https://drive.google.com/uc?export=download&id=1XIE7i5U-7jH7K6gcbc-BWwhGuZ9QwXnV',
    'https://drive.google.com/uc?export=download&id=1aiomd3Usc-l9i593rVOB7Cl_CMOmIq5u',
    'https://drive.google.com/uc?export=download&id=1QO9j8evQ1N5sd8Do2h4uxeeyAJmjhTDi',
    'https://drive.google.com/uc?export=download&id=1NrECopQM1Eb6R-wGd6rDobJaXztIJNHD'
  ];
  static List imageUrl = ['https://drive.google.com/uc?export=download&id=1waIjx_IK6LqH3t6rFy6E6of3PYbz0YFW',
    'https://drive.google.com/uc?export=download&id=1LW2vgDIw_BwU7Ga02HOkZQx2dx59mxXA',
    'https://drive.google.com/uc?export=download&id=10Ghh3CQfhZ7rQR_hBwSaewNVJiS-9WvR',
    'https://drive.google.com/uc?export=download&id=1-v7P9K-8CWscFcMsBif2Nfnc1MEJnNNy',
    'https://drive.google.com/uc?export=download&id=1OgWDg_N5tGIs1teRkvjrhVgXnB41ArtT'
  ];
  final List<MusicDataModel> Musicdata = List.generate(
      title.length,
      (index) => MusicDataModel('${title[index]}','${url[index]}','${imageUrl[index]}','${title[index]} Description...'));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Songs",)),
      body: ListView.builder(
        itemCount: Musicdata.length,
        itemBuilder: (context, index){
          return Card(
            margin: const EdgeInsets.symmetric(
              vertical: 8, horizontal: 10),
            child: ListTile(
              title: Text(Musicdata[index].title,
              style: TextStyle(
              color: Color(0xFF274D85),
              fontWeight: FontWeight.bold,
              fontSize: 18,),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>SongPage(data: Musicdata[index],)));
              },
            ),
          );
        },
      ),
    );
  }
}
