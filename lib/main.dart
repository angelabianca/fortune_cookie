import 'package:flutter/material.dart';
import 'model/FortuneCookieViewModel.dart';
import 'pages/FortuneCookiePage.dart';

void main() {
  runApp(FortuneCookieApp());
}

class FortuneCookieApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FortuneCookieAppState();
}

class _FortuneCookieAppState extends State<FortuneCookieApp> {
  FortuneCookieViewModel model;

  void initState() {
    super.initState();
    model = FortuneCookieViewModel();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: 'Fortune Cookie',
        theme: ThemeData(
          primarySwatch: Colors.brown,
        ),
        home: FortuneCookiePage(model)
    );
  }
}




