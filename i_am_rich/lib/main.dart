import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: rich(),
    );
  }
}

class rich extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: Center(
          child: Text(
            "I AM RICH",
            style: TextStyle(
                color: Colors.white, fontSize: 22, letterSpacing: 1.3),
          ),
        ),
      ),
      body: Center(
        child: Image(
          width: 540,
          height: 540,
          image: AssetImage('assets/images/ruby.png'),
        ),
      ),
    );
  }
}
