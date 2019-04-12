import 'package:flutter/material.dart';
import './testing_page.dart';

class EntryPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("MasterMind")),
        body: Material(color: Colors.white,
            child: Center(child: mainPage(context) ,))
    );
  }

  Widget mainPage(BuildContext context){
    AssetImage assetImage =  AssetImage('images/brain.jpg');
    Image image = Image(image: assetImage);
    return Container( padding: EdgeInsets.all(15.0),
        child: Column(children: <Widget>[image,
        makeButton("Play",context),
        makeButton("Tutorial",context),
        makeButton("Settinngs",context),
        makeButton("Exit",context),
    ],
    ));
  }

  Widget makeButton(String buttonName,BuildContext context) {
    
    Widget button = Padding(child:RaisedButton(color: Colors.blue,child: Text(buttonName),elevation: 7.0,onPressed:()=> buttonPressed(buttonName, context),)
    ,padding: EdgeInsets.all(5.0),
    );
    return button;
  }

  void buttonPressed(String buttonName,BuildContext context)
  {
    debugPrint(buttonName);

    if(buttonName=="Play")
      {
        debugPrint("in if");
        Navigator.push(context,MaterialPageRoute(builder: (context){ return TestingPage();
        }));
        debugPrint("navigation done");
      }
  }
}

