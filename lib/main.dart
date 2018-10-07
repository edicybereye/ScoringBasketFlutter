import 'package:flutter/material.dart';
import 'package:interactivity/custom.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int scoreA = 0, scoreB = 0;

  // int scoreA = 0;
  // int scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "$scoreA",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          scoreA++;
                        });
                      },
                      child: Text(
                        'Tambah 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          scoreA += 2;
                        });
                      },
                      child: Text(
                        'Tambah 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          scoreA += 3;
                        });
                      },
                      child: Text(
                        'Tambah 3',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "$scoreB",
                      style: TextStyle(fontSize: 30.0),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          scoreB++;
                        });
                      },
                      child: Text(
                        'Tambah 1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      onPressed: () {
                        setState(() {
                          scoreB += 2;
                        });
                      },
                      child: Text(
                        'Tambah 2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    CustomButton(
                      onPressed: () {
                        setState(() {
                          scoreB += 3;
                        });
                      },
                      label: 'Tambah 3',
                    )
                  ],
                )
              ],
            ),
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  scoreA = 0;
                  scoreB = 0;
                });
              },
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
