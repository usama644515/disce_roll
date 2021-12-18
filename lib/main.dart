import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(child: Text('DICE')),
        ),
        body: DiscePage(),
      ),
    ),
  );
}

class DiscePage extends StatefulWidget {
  @override
  _DiscePageState createState() => _DiscePageState();
}

class _DiscePageState extends State<DiscePage> {
  int dicenum1 = 1;
  int dicenum2 = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dicenum1 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$dicenum1.png')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      dicenum2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset('images/dice$dicenum2.png')),
            ),
          ],
        ),
      ),
    );
  }
}
