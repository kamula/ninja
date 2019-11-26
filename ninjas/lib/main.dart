import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Ninjacard(),
));

class Ninjacard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja ID Card'),

        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
    );
  }
}


