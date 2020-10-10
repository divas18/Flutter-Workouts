import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My First App",
    home: myhome(),
  ));
}

class myhome extends StatelessWidget {
  const myhome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(
          child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Intro",
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 25,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 1.5),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.teal,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('images/divas.jpg'),
            ),
            Text(
              "DIVAS BHADANI",
              overflow: TextOverflow.fade,
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 35.0,
                letterSpacing: 2.0,
                color: Colors.black,
              ),
            ),
            Text(
              'Developer',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.lime,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  '+91 7277101828',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'bhadani.divas@gmail.com',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.school,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'National Institute of Technology, Karnataka',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              color: Colors.black,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.my_location,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  'Chhotki Delha Gaya, Bihar',
                  style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0,
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
