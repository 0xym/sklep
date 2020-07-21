import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EkranGry extends StatefulWidget {
  static const routeName = "/EKRAN GRY";

  @override
  _EkranGryState createState() => _EkranGryState();
}

class _EkranGryState extends State<EkranGry> {
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

  Widget _widgetOwocu(int x, int y) {
    return Text(
      _obrazekOwocu(plansza[x][y]),
      style: TextStyle(fontSize: 50),
    );
  }

  _EkranGryState() {
    plansza = [
      [
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
      ],
      [
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
      ],
      [
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
      ],
      [
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
      ],
      [
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
        generator.nextInt(5) + 1,
      ],
    ];
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
          Column(
            children: <Widget>[
              SizedBox(height: 60),
              Row(
                children: <Widget>[
                  _widgetOwocu(0, 0),
                  _widgetOwocu(0, 1),
                  _widgetOwocu(0, 2),
                  _widgetOwocu(0, 3),
                  _widgetOwocu(0, 4),
                ],
              ),
              Row(
                children: <Widget>[
                  _widgetOwocu(1, 0),
                  _widgetOwocu(1, 1),
                  _widgetOwocu(1, 2),
                  _widgetOwocu(1, 3),
                  _widgetOwocu(1, 4),
                ],
              ),
              Row(
                children: <Widget>[
                  _widgetOwocu(2, 0),
                  _widgetOwocu(2, 1),
                  _widgetOwocu(2, 2),
                  _widgetOwocu(2, 3),
                  _widgetOwocu(2, 4),
                ],
              ),
              Row(
                children: <Widget>[
                  _widgetOwocu(3, 0),
                  _widgetOwocu(3, 1),
                  _widgetOwocu(3, 2),
                  _widgetOwocu(3, 3),
                  _widgetOwocu(3, 4),
                ],
              ),
              Row(
                children: <Widget>[
                  _widgetOwocu(4, 0),
                  _widgetOwocu(4, 1),
                  _widgetOwocu(4, 2),
                  _widgetOwocu(4, 3),
                  _widgetOwocu(4, 4),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
