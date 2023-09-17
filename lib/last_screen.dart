import 'dart:io';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/turn.dart';

class lastscreeen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Thank You For Playing',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Do you want to play Again?',
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'Yes',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.amberAccent),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => decide_turn()));
                  },
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Navigator.pushReplacement(
                //         context,
                //         MaterialPageRoute(builder: (context) => decide_turn()),
                //       );
                //     },
                //     child: const Text(
                //       'Yes',
                //       style: TextStyle(
                //           fontSize: 30,
                //           fontWeight: FontWeight.w500,
                //           color: Colors.amberAccent),
                //     )),
                const SizedBox(
                  width: 40,
                ),
                InkWell(
                  child: Container(
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'No',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.amberAccent),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onTap: () {
                    exit(0);
                  },
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     exit(0);
                //   },
                //   child: const Text(
                //     'No',
                //     style: TextStyle(
                //         fontSize: 30,
                //         fontWeight: FontWeight.w500,
                //         color: Colors.amberAccent),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
