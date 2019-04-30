import 'package:flutter/material.dart';
import 'Strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appBarTilte,
      theme: ThemeData(primaryColor: new Color(0xff622f74)),
      home: Scaffold(
        appBar: AppBar(
          title: Text(Strings.appBarTilte),
        ),
        body: ListView(
          children: <Widget>[
            buttonDisplay,
          ],
        ),
      ),
    );
  }

  //buttonDisplay
  Widget buttonDisplay = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        //cara 1
        Column(
          children: <Widget>[
            Icon( Icons.phone, color: Color(0xff622f74),),
            Container(
              child: Text( Strings.call, style: TextStyle(color: Color(0xff622f74), fontSize: 21),
              ),
            )
          ],
        ),
        //cara 2
        buildButton(Icons.radio, Strings.music),
      ],
    ),
  );
}

//cara2
//buildButton
Column buildButton(IconData icon, String label) {
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: Color(0xff622f74),
      ),
      Container(
        child: Text(
          label,
          style: TextStyle(color: Color(0xff622f74), fontSize: 21),
        ),
      )
    ],
  );
}
