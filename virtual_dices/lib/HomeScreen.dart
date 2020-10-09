import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int left = 1;
  int right = 1;
  void roll() {
    setState(() {
      left = Random().nextInt(6) + 1;
      right = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
            child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Virtual Rolling Dices",
                  style: TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 22,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.3),
                ))),
      ),
      backgroundColor: Colors.cyan[400],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                        image: AssetImage('assets/images/dice-png-$left.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: GestureDetector(
                  onDoubleTap: roll,
                  child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(
                          image:
                              AssetImage('assets/images/dice-png-$right.png'))),
                ))
              ],
            ),
            RaisedButton(
              color: Colors.lightGreen,
              onPressed: roll,
              hoverColor: Colors.green[600],
              hoverElevation: 20.5,
              highlightElevation: 50,
              textColor: Colors.black,
              child: Text(
                "Roll",
                style: TextStyle(fontSize: 20, letterSpacing: 1.5),
              ),
            )
          ],
        ),
      ),
    );
  }
}
