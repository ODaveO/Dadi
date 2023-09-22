import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Image.asset(
                'images/dice1.png',
              ),
              flex: 1,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Image.asset(
                'images/dice6.png',
              ),
              flex: 1,
            ),
          ]),
    );
  }
}

/*
Image(
              //margin: EdgeInsets.only(top: 200),
              image: AssetImage('images/dice1.png'),
              width: 150,
            ),
            SizedBox(width: 20),
            Image(
              //margin: EdgeInsets.only(top: 200),
              image: AssetImage('images/dice6.png'),
              width: 150,
            ),
*/
