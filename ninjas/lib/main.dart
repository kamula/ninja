import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Ninjacard(),
));

class Ninjacard extends StatefulWidget {
  @override
  _NinjacardState createState() => _NinjacardState();
}

class _NinjacardState extends State<Ninjacard> {

  int ninjaLevel = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
          onPressed:(){
            setState(() {
              ninjaLevel +=1;
            });
          },
          child:Icon(Icons.add),
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/atari.jpeg'),
              radius: 40.0,
            ),
          ),
          Divider(
            height: 90.0,
            color: Colors.grey[800],

          ),
          Text(
            'NAME',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 2.0,

            ),

          ),
          SizedBox(height: 10.0,),
          Text(
            '$ninjaLevel',
            style: TextStyle(
              color: Colors.red,
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "LAST NAME",
            style: TextStyle(
              color: Colors.blue,

            ),

          ),
          SizedBox(height:20.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}


