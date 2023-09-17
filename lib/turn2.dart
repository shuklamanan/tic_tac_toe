import 'package:flutter/material.dart';
import 'package:tic_tac_toe/main.dart';
import 'package:tic_tac_toe/secondturnx.dart';

class decide_turn2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 35.0, top: 13.0),
                  child: Text(
                    '"X" -> First Turn',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: Container(
                width: 250,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 13.0),
                  child: Text(
                    '"X" -> Second Turn',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => MyHomePage2()));
              },
            )
          ],
        ),
      ),
    );
  }
}
