import 'dart:math';

import 'package:flutter/material.dart';

class EkranGry extends StatefulWidget {
  static const routeName = "/EKRAN GRY";

  @override
  _EkranGryState createState() => _EkranGryState();
}

class _EkranGryState extends State<EkranGry> {

  Random generator = Random();
  List<List<int>> plansza;
  int _winogrona; //1
  int _banany; //2 
  int _wisnie; //3
  int _jablka; //4
  int _gruszki;//5

  _EkranGryState() {
    plansza = [
      [generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1],
      [generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1],
      [generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1],
      [generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1],
      [generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1, generator.nextInt(5) +1],
    ];
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(children: <Widget>[
        Container(width: 100, height: 100, child: Column(),), VerticalDivider(), Container(width: 100,)
      ],),
    );
  }

}