import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fortune_cookie/model/FortuneCookieViewModel.dart';
import 'package:share/share.dart';
import 'package:shake/shake.dart';
import 'package:vibration/vibration.dart';


class FortuneCookiePage extends StatefulWidget {
  FortuneCookieViewModel model;
  FortuneCookiePage(this.model);
  String lol = "";

  String text = 'Schau dir meinen heutigen Glückskeks an: \n';

  @override
  State<StatefulWidget> createState() => _FortuneCookieState(model);


}
class _FortuneCookieState extends State<FortuneCookiePage>{

  FortuneCookieViewModel model;
  _FortuneCookieState(this.model);
  String lol = "";

  String text = 'Schau dir meinen heutigen Glückskeks an: \n';
  @override
  Widget build(BuildContext context) {
    ShakeDetector detector = ShakeDetector.autoStart(
        onPhoneShake: () {
         Vibration.vibrate(duration: 500);
          build(context);
          setState(() {
            lol = "";
          });
          notifyListeners();
        });
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fortune Cookie'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Klicke den Button, um deinen Glückskeks zu öffnen.", style: TextStyle(color: Colors.brown, fontSize: 20.0), textAlign: TextAlign.center),
              Text(model.txt),

              Image(image: AssetImage('images/transparentCookie.png')),
              FlatButton(
                color: Colors.brown,
                textColor: Colors.white,
                  onPressed: () {
                    Vibration.vibrate(duration: 500);
                    build(context);
                    setState(() {
                      lol = model.getword;
                    });
                  },
                  child: Text(
                      "Glückskeks öffnen", style: TextStyle(fontSize: 20.0)),
              ),
              new Text(lol, style: TextStyle(color: Colors.brown, fontSize: 25.0), textAlign: TextAlign.center)
            ]
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Share.share(text + lol);
        },
        tooltip: 'Increment',
        child: Icon(Icons.share),
      ),
    );
  }

  void notifyListeners() {}


}