// This Project is so simple its my First App To Learn Flutter and how Dart And Flutter Works
// Instagram : sepehremune  /  Email : theseyedwork@gmail.com
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(GameApplcation());
}

class GameApplcation extends StatefulWidget {
  const GameApplcation({super.key});

  @override
  State<GameApplcation> createState() => _GameApplcationState();
}

class _GameApplcationState extends State<GameApplcation> {
  @override
  int top = 2;
  int bottom = 3;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "vbfont"),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("سنگ کاغذ قیچی"),
          backgroundColor: Colors.deepOrange,
          elevation: 3.0,
        ),
        backgroundColor: Colors.deepOrange,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage("assets/images/$top.png"),
                  height: 100.0,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      top = Random().nextInt(3) + 1;
                      bottom = Random().nextInt(3) + 1;
                    });
                  },
                  child: Text(
                    "Start The Game",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                Image(
                  image: AssetImage("assets/images/$bottom.png"),
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
