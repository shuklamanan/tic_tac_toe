import 'package:flutter/material.dart';
import 'package:tic_tac_toe/turn2.dart';

class decide_turn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Player1 -> "X"',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Player2 -> "O"',
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.amberAccent,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: Container(
                width: 100,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amberAccent,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 8.0),
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 25,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => decide_turn2()));
              },
            )
          ],
        ),
      ),
    );
  }
}
