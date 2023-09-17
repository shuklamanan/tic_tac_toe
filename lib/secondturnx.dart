import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/last_screen.dart';

class MyHomePage2 extends StatefulWidget {
  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  Timer? _timer, newtimer;
  @override
  void initState() {
    super.initState();
    _startTimer();
    _checkingdraw();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        checkwinner();
      });
    });
  }

  void _checkingdraw() {
    newtimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        isdraw();
      });
    });
  }

  bool f = false,
      s = false,
      th = false,
      fo = false,
      fi = false,
      si = false,
      se = false,
      ei = false,
      ni = false,
      fsnack = false,
      ssnack = false,
      thsnack = false,
      fosnack = false,
      fisnack = false,
      sisnack = false,
      sesnack = false,
      eisnack = false,
      nisnack = false,
      draw = true;
  int playerturn = 1, truecounter = 0, allboxescheck = 0;
  List<String> arr = ["", "", "", "", "", "", "", "", ""];

  void snaking(String a) {
    setState(
      () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            duration: const Duration(seconds: 2),
            dismissDirection: DismissDirection.down,
            behavior: SnackBarBehavior.floating,
            width: 250,
            padding: const EdgeInsets.all(10),
            backgroundColor: Color.fromARGB(255, 30, 227, 33),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
            content: Text(
              '$a winning',
              style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }

  void isdraw() {
    allboxescheck = 0;
    for (int i = 0; i < 9; i++) {
      if (arr[i] == "X" || arr[i] == "O") {
        allboxescheck++;
      }
    }
    if (draw && allboxescheck == 9) {
      _timer?.cancel();
      newtimer?.cancel();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          duration: Duration(seconds: 2),
          content: const Text(
            'Match is Draw!!',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
          width: 250,
          padding: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(255, 230, 215, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
        ),
      );
      Timer(
        const Duration(seconds: 1),
        () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => lastscreeen()));
        },
      );
    }
  }

  void overridesnackbar() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'You can not overwrite that place',
          style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 15),
        ),
        width: 250,
        padding: const EdgeInsets.all(10),
        behavior: SnackBarBehavior.floating,
        backgroundColor: const Color.fromARGB(255, 225, 100, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13.0),
        ),
      ),
    );
  }

  void checkwinner() {
    if ((arr[0] == arr[4] && arr[4] == arr[8]) &&
        (arr[0] == "X" || arr[0] == "O")) {
      snaking(arr[0]);
      _timer?.cancel();
      draw = false;
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[2] == arr[4] && arr[4] == arr[6]) &&
        (arr[2] == "X" || arr[2] == "O")) {
      snaking(arr[2]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[0] == arr[1] && arr[1] == arr[2]) &&
        (arr[1] == "X" || arr[1] == "O")) {
      snaking(arr[0]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[0] == arr[3] && arr[3] == arr[6]) &&
        (arr[3] == "X" || arr[3] == "O")) {
      snaking(arr[0]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[7] == arr[6] && arr[6] == arr[8]) &&
        (arr[6] == "X" || arr[6] == "O")) {
      snaking(arr[6]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[2] == arr[5] && arr[5] == arr[8]) &&
        (arr[5] == "X" || arr[5] == "O")) {
      snaking(arr[2]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[1] == arr[4] && arr[4] == arr[7]) &&
        (arr[4] == "X" || arr[4] == "O")) {
      snaking(arr[1]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else if ((arr[3] == arr[4] && arr[4] == arr[5]) &&
        (arr[4] == "X" || arr[4] == "O")) {
      snaking(arr[3]);
      _timer?.cancel();
      draw = false;

      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => lastscreeen()));
    } else {
      draw = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Padding(
          padding: EdgeInsets.only(left: 110),
          child: Text(
            'Tic Tac Toe',
            style: TextStyle(
                color: Colors.blue, fontSize: 25, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.amberAccent,
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 3,
            crossAxisSpacing: 3,
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (fsnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          fsnack = true;
                          if ((playerturn++) % 2 != 0) {
                            f = true;
                            truecounter++;
                          }
                        },
                      );
                      if (f == false) {
                        if (fsnack == true) {
                          arr[0] = "X";
                        }
                      } else {
                        arr[0] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(f == true) ? "O" : (fsnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (ssnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          ssnack = true;
                          if ((playerturn++) % 2 != 0) {
                            s = true;
                            truecounter++;
                          }
                        },
                      );
                      if (s == false) {
                        if (ssnack == true) {
                          arr[1] = "X";
                        }
                      } else {
                        arr[1] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(s == true) ? "O" : (ssnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (thsnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          thsnack = true;
                          if ((playerturn++) % 2 != 0) {
                            th = true;
                            truecounter++;
                          }
                        },
                      );
                      if (th == false) {
                        if (thsnack == true) {
                          arr[2] = "X";
                        }
                      } else {
                        arr[2] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(th == true) ? "O" : (thsnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (fosnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          fosnack = true;
                          if ((playerturn++) % 2 != 0) {
                            fo = true;
                            truecounter++;
                          }
                        },
                      );
                      if (fo == false) {
                        if (fosnack == true) {
                          arr[3] = "X";
                        }
                      } else {
                        arr[3] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(fo == true) ? "O" : (fosnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (fisnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          fisnack = true;
                          if ((playerturn++) % 2 != 0) {
                            fi = true;
                            truecounter++;
                          }
                        },
                      );
                      if (fi == false) {
                        if (fisnack == true) {
                          arr[4] = "X";
                        }
                      } else {
                        arr[4] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(fi == true) ? "O" : (fisnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (sisnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          sisnack = true;
                          if ((playerturn++) % 2 != 0) {
                            si = true;
                            truecounter++;
                          }
                        },
                      );
                      if (si == false) {
                        if (sisnack == true) {
                          arr[5] = "X";
                        }
                      } else {
                        arr[5] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(si == true) ? "O" : (sisnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (sesnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          sesnack = true;
                          if ((playerturn++) % 2 != 0) {
                            se = true;
                            truecounter++;
                          }
                        },
                      );
                      if (se == false) {
                        if (sesnack == true) {
                          arr[6] = "X";
                        }
                      } else {
                        arr[6] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(se == true) ? "O" : (sesnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (eisnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          eisnack = true;
                          if ((playerturn++) % 2 != 0) {
                            ei = true;
                            truecounter++;
                          }
                        },
                      );
                      if (ei == false) {
                        if (eisnack == true) {
                          arr[7] = "X";
                        }
                      } else {
                        arr[7] = "O";
                      }
                    }
                  },
                  child: Text(
                    '${(ei == true) ? "O" : (eisnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blue,
                child: TextButton(
                  onPressed: () {
                    if (nisnack) {
                      overridesnackbar();
                    } else {
                      setState(
                        () {
                          nisnack = true;
                          if ((playerturn++) % 2 != 0) {
                            ni = true;
                            truecounter++;
                          }
                        },
                      );
                      if (ni == false) {
                        if (nisnack == true) {
                          arr[8] = "X";
                        }
                      } else {
                        arr[8] = "O";
                      }
                      print(arr);
                    }
                  },
                  child: Text(
                    '${(ni == true) ? "O" : (nisnack == false) ? "" : "X"}',
                    style: const TextStyle(
                        fontSize: 35,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
