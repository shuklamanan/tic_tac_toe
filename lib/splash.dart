import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/turn.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => FirstSplash();
}

class FirstSplash extends State<Splash> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Timer(
      const Duration(seconds: 6),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => decide_turn(),
          ),
        );
      },
    );
  }

  // double _width = 100;
  // FontWeight _fontweight = FontWeight.normal;
  var myopacity = 0.0, buttonopacity = 1.0, microsec = 1000000000000;
  // Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 306,
              height: 306,
              color: Colors.blue,
              child: GridView.count(
                padding: EdgeInsets.all(0),
                crossAxisCount: 3,
                mainAxisSpacing: 3,
                crossAxisSpacing: 3,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: AnimatedOpacity(
                      duration: Duration(seconds: 2),
                      opacity: myopacity,
                      child: const Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: myopacity,
                      child: const Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: myopacity,
                      child: const Center(
                        child: Text(
                          'O',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: myopacity,
                      child: const Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amberAccent,
                    child: AnimatedOpacity(
                      duration: const Duration(seconds: 2),
                      opacity: myopacity,
                      child: const Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                              fontSize: 70,
                              fontWeight: FontWeight.w500,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  myopacity = 1;
                });
              },
              child: const Text('Play'),
            ),
          ],
        ),
      ),
    );
  }
}
/*
Center(
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedOpacity(
                  duration: const Duration(seconds: 4),
                  opacity: myopacity,
                  child: Container(
                    child: Text(
                      'Tic-Tac-Toe',
                      style: TextStyle(
                          fontSize: 35, fontWeight: _fontweight, color: _color),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                AnimatedOpacity(
                  opacity: buttonopacity,
                  duration: Duration(microseconds: microsec),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(
                        () {
                          // _width = 110;
                          _fontweight = FontWeight.w900;
                          _color = Colors.white;
                          myopacity = 1.0;
                          microsec = 0;
                          buttonopacity = 0;
                        },
                      );
                    },
                    child: const Text('Clck whithin 5 second'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ), */
