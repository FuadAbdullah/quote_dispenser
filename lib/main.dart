import 'package:flutter/material.dart';

void main() {
  runApp(_Application());
}

class _Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Quote Explorer",
      home: _ApplicationCore()
    );
  }
}

class _ApplicationCore extends StatefulWidget {

  final uid = 0;

  @override
  __ApplicationCoreState createState() => __ApplicationCoreState();
}

class __ApplicationCoreState extends State<_ApplicationCore> {

  // Variables
  var _cardText = "";

  // Method
  void _setCardText(){
    setState((){  _cardText = "Test Worked Again";});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        foregroundColor: Colors.brown,
        centerTitle: true,
        title: new Text("Quote Explorer V0.1 Alpha"),
      ),
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Motivation is at the tip of test finger."),
            new Padding(padding: const EdgeInsets.all(10.0)),
            new GestureDetector(
                  onTap: () {_setCardText();},
                  child: new Stack(
                    alignment: Alignment.center,
                      children: <Widget>[
                        new Card(
                          color: Colors.amber,
                          child: new Padding(padding: const EdgeInsets.only(top: 60.0, bottom: 60.0, left: 150.0, right: 150.0))),
                        new Text(_cardText)
                      ],
                ),
            )
          ],
        ),
      ),
    );
  }
}

