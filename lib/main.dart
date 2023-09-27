import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('LEFT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('LEFT button pressed');
                  setState(() {
                    //EVENTO CHE RICHIAMA "Widget build" PER RICREARE L'INTERFACCIA UTENTE
                    leftDiceNumber = 6;
                    print('Il dado sinistro è stato aggiornato');
                  });
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('RIGHT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('RIGHT button pressed');
                },
                child: Image.asset(
                  'images/dice1.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
          ]),
    );
  }
}

/*
class DicePage extends StatelessWidget {
  var leftDiceNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('LEFT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('LEFT button pressed');
                },
                child: Image.asset(
                  'images/dice$leftDiceNumber.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Text('RIGHT button pressed',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20));
                  print('RIGHT button pressed');
                },
                child: Image.asset(
                  'images/dice6.png',
                ),
              ),
              flex: 1, //define proportional size
            ),
          ]),
    );
  }
}

*/

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
