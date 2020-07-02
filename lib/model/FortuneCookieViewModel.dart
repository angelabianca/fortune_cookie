import 'dart:math';
import 'package:scoped_model/scoped_model.dart';

class FortuneCookieViewModel extends Model {

  String txt = "";

  var arr = ["Heute wird ein guter Tag!","Heute wirst du deine Ziele erreichen.","Bleibe heute besser zuhause.","Was du heute kannst besorgen, das verschiebe nicht auf Morgen.","Es ist an der Zeit zu vergeben."];
  get getword{
    var rng = new Random();
    return arr[rng.nextInt(4)];
  }
  FortuneCookieViewModel(){




  }

}