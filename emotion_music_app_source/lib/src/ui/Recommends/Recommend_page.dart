import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_app/src/ui/favorites/favorites_screen.dart';
import 'package:tflite/tflite.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_app/src/emotion/test.dart';

class RecommendPage extends StatefulWidget {
  @override
  _RecommendPageState createState() => _RecommendPageState();
}
class _RecommendPageState extends State<RecommendPage> {
  bool _isLoading;
  File _image;
  List _output;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isLoading = true;
    loadMLModel().then((value){
      setState(() {
        _isLoading= false;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이미지를 골라주세요.'),
      ),
      body: _isLoading ? Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(),
      ) : Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _image == null ? Container(): Image.file(_image),
            SizedBox(height: 16,),
            _output == null ? Text("Favorite로 이동합니다.",
                  style: TextStyle(
                  color: Color(0xFF274D85),
                  fontWeight: FontWeight.w600,
                  fontSize: 15,)): Text("현재 감정은 "+
                    _output[0]["label"].toString()+"입니다.",
                    style: TextStyle(
                    color: Color(0xFF274D85),
                    fontWeight: FontWeight.w600,
                    fontSize: 15,)
            ),
            Container(
              width: 300.0,
              height: 40.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle
              ),
              child: FlatButton(
                  color: Colors.blueAccent,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>musicSelect(_output)));
                  },
                  child: Text("현재 감정에 맞는 음악 추천",textScaleFactor: 1.2,style:
                    TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,))
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          chooseImage();
        },
        child: Icon(
            Icons.image
        ),
      ),
    );
  }
  chooseImage() async{
    var image= await ImagePicker.pickImage(source: ImageSource.gallery);
    if(image == null) return null;
    setState((){
      _isLoading =true;
      _image = image;
    });
    runModelOnImage(image);
  }
  runModelOnImage(File image) async{
    var output = await Tflite.runModelOnImage(
        path: image.path,
        numResults: 2,
        imageMean: 127.5,
        imageStd: 127.5,
        threshold: 0.5
    );
    setState(() {
      _isLoading = false;
      _output = output;
    });
  }
  loadMLModel() async{
    await Tflite.loadModel(
        model: "assests/model_unquant.tflite",
        labels: "assests/labels.txt"
    );
  }
}
  musicSelect(List _output) {
  if(_output==null) return FavoritesScreen();
    switch(_output[0]["index"].toString()) {
      case '0':return Test();
      case '1':
      case '2':
      case '3':
      case '4':
      case '5':
      case '6':
      default: return Test();
    }
  }

