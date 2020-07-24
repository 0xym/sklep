import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EkranGry extends StatefulWidget {
  static const routeName = "/EKRAN GRY";

  @override
  _EkranGryState createState() => _EkranGryState();
}

class _EkranGryState extends State<EkranGry> {
  static const iloscRodzajowOwocow = 5;
  final wysokosc = 5;
  final szerokosc = 6;
  Random generator = Random();
  List<List<int>> plansza;
  int _winogrona = 0; //1
  int _banany = 0; //2
  int _wisnie = 0; //3
  int _jablka = 0; //4
  int _gruszki = 0; //5

  String _obrazekOwocu(int owoc) {
    if (owoc == 1) {
      return '🍇';
    }
    if (owoc == 2) {
      return '🍌';
    }
    if (owoc == 3) {
      return '🍒';
    }
    if (owoc == 4) {
      return '🍎';
    }
    if (owoc == 5) {
      return '🍐';
    }
    return ' ';
  }

  
  Widget _widgetOwocu(int owoc) {
    return Text(
      _obrazekOwocu(owoc),
      style: TextStyle(fontSize: 50),
    );
  }

  _EkranGryState() {
    plansza = [];
    for (var i = 0; i < wysokosc; i ++)
    {
      var rzad = <int>[];
      for (var i = 0; i < szerokosc; i++)
      {
        rzad.add(generator.nextInt(iloscRodzajowOwocow) + 1);
      }
      plansza.add(rzad);
    }

    //_winogrona = 0000;
    /*for (var i = 0; i < 5; i++)
      for (var j = 0; j < 5; j++) {
        if (plansza[i][j] == 1) _winogrona = _winogrona + 1;
      }*/
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
    return Scaffold(
      body: Row(
        children: <Widget>[
          Container(
            width: 170,
            height: 100,
            child: Column(),
          ),
          VerticalDivider(
            thickness: 2.5,
            color: Colors.black,
          ),
          FittedBox(
            fit: BoxFit.contain,
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                Column(children: plansza.map((rzad) => 
                  Row(children: rzad.map(
                    (owoc) => _widgetOwocu(owoc)).toList())).toList()),
                SizedBox(height: 50),
              ],
            ),
          )
        ],
      ),
    );
  }
}
