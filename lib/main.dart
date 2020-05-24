import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:targ/ekran_gry.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {EkranGry.routeName: (_) => EkranGry()},
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("SKLEP")),
        ),
        body: Column(children: <Widget>[
          ListTile(
            title: Text(
              "Instrukcja",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "OWOCE I WARZYWA TO SĄ WINOGRONA,BANANY,WIŚNIE,JABŁKA,GRUSZKI I MARCHEWKI,OGURKI,ZIEMNIAKI,AWOKADO,BAKŁAŻAN",
              style: TextStyle(fontWeight: FontWeight.bold, height: 1.5),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          RaisedButton(
            child: Text("GRAJ"),
            onPressed: () {Navigator.of(context).pushNamed(EkranGry.routeName);},
          ),
          FlatButton(
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("POZIOMY"),
            ),
            onPressed: () {},
          ),
          FlatButton(child: Text("ZASADY GRY"),onPressed: (){},),
          FlatButton(
            child: Padding(
              padding: const EdgeInsets.only(right: 200.0),
              child: Text("RZECZY :)"),
            ),
            onPressed: () {},
          ),
          
        ]));
  }
}
