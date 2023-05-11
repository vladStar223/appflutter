import 'dart:math';

import 'package:flutter/material.dart';
import 'main.dart';

class urv extends StatefulWidget {
  @override
  State<urv> createState() => _urvState();
}

class _urvState extends State<urv> {
  bool a1 = true;
  bool b1 = false;
  bool c1 = false;
  bool eql = false;
  bool mid = false;
  var a = "0";
  var b = "0";
  var c = "0";
  double d = 0;
  double x1 = 0;
  double x2 = 0;
  double a2 = 0;
  double b2 = 0;
  double c2 = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    if (eql == true) {
      mid = false;
      a2 = double.parse(a);
      b2 = double.parse(b);
      c2 = double.parse(c);
      d = (b2 * b2 - 4 * a2 * c2);
      setState(() {});
      if (d > 0) {
        d = sqrt(d);
        x1 = (-b2 + d) / (2 * a2);
        x2 = (-b2 - d) / (2 * a2);
      }
      if (d == 0) {
        x1 = -b2 / 2 * a2;
      }
      if (d < 0) {
        mid = true;
      }
      eql = false;
      a = "0";
      b = "0";
      c = "0";
      a1 = true;
      b1 = false;
      c1 = false;
      setState(() {});
    }

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Решение уравнений",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "D  = ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                if (mid == false)
                  Text(
                    d.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                if (mid == true)
                  const Text(
                    "Дискриминант отрицательный",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
              ],
            ),
            const Text(
              "Формула D = b^2 - 4*a*c",
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const Text("Вид уравнения"),
            const Text("ax^2+bx+cx"),
            Row(
              children: [
                const SizedBox(
                  width: 55,
                ),
                Container(
                  height: 30,
                  color: Colors.white,
                  width: 63,
                  child: const Text(
                    "X1 = ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Container(
                  height: 30,
                  width: 150,
                  color: Colors.white,
                  child: Text(
                    x1.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 55,
                ),
                Container(
                  height: 30,
                  color: Colors.white,
                  width: 63,
                  child: const Text(
                    "X2 = ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                ),
                Container(
                  height: 30,
                  width: 150,
                  color: Colors.white,
                  child: Text(
                    x2.toString(),
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 80,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Text(
                        "Теоретическая информация",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  const Text(
                    " X1 =-b+D/2*a",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    "X2 =-b-D/2*a",
                    style: TextStyle(fontSize: 15),
                  ),
                  Row(
                    children: [
                      const Text(
                        "Разработка",
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        a2.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        b2.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        c2.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Text("Ввод значений"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text("A"),
                Text("B"),
                Text("C"),
              ],
            ),
            Container(
              width: 300,
              height: 50,
              color: Colors.black26,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      a1 = true;
                      b1 = false;
                      c1 = false;
                      setState(() {});
                    },
                    child: Text(a.toString()),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      a1 = false;
                      b1 = true;
                      c1 = false;
                      setState(() {});
                    },
                    child: Text(b.toString()),
                  ),
                  TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange),
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    onPressed: () {
                      a1 = false;
                      b1 = false;
                      c1 = true;
                      setState(() {});
                    },
                    child: Text(c.toString()),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              height: 348,
              color: Colors.black12,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 76,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}2";
                              } else {
                                a = "2";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}2";
                              } else {
                                b = "2";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}2";
                              } else {
                                c = "2";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}3";
                              } else {
                                a = "3";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}3";
                              } else {
                                b = "3";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}3";
                              } else {
                                c = "3";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}4";
                              } else {
                                a = "4";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}4";
                              } else {
                                b = "4";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}4";
                              } else {
                                c = "4";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 76,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}4";
                              } else {
                                a = "4";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}4";
                              } else {
                                b = "4";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}4";
                              } else {
                                c = "4";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}5";
                              } else {
                                a = "5";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}5";
                              } else {
                                b = "5";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}5";
                              } else {
                                c = "5";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '5',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}6";
                              } else {
                                a = "6";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}6";
                              } else {
                                b = "6";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}6";
                              } else {
                                c = "6";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '6',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}4";
                              } else {
                                a = "4";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}4";
                              } else {
                                b = "4";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}4";
                              } else {
                                c = "4";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 76,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}7";
                              } else {
                                a = "7";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}7";
                              } else {
                                b = "7";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}7";
                              } else {
                                c = "7";
                              }
                            }

                            setState(() {});
                          },
                          child: const Text(
                            '7',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}8";
                              } else {
                                a = "8";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}8";
                              } else {
                                b = "8";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}8";
                              } else {
                                c = "8";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '8',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}9";
                              } else {
                                a = "9";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}9";
                              } else {
                                b = "9";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}9";
                              } else {
                                c = "9";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '9',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}4";
                              } else {
                                a = "4";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}4";
                              } else {
                                b = "4";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}4";
                              } else {
                                c = "4";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 80,
                        width: 76,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}1";
                              } else {
                                a = "1";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}1";
                              } else {
                                b = "1";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}1";
                              } else {
                                c = "1";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '1',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}2";
                              } else {
                                a = "2";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}2";
                              } else {
                                b = "2";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}2";
                              } else {
                                c = "2";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '2',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}3";
                              } else {
                                a = "3";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}3";
                              } else {
                                b = "3";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}3";
                              } else {
                                c = "3";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '3',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 1,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        color: Colors.white,
                        child: TextButton(
                          style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white)),
                          onPressed: () {
                            if (a1 == true) {
                              if (a != "0") {
                                a = "${a}4";
                              } else {
                                a = "4";
                              }
                            }
                            if (b1 == true) {
                              if (b != "0") {
                                b = "${b}4";
                              } else {
                                b = "4";
                              }
                            }
                            if (c1 == true) {
                              if (c != "0") {
                                c = "${c}4";
                              } else {
                                c = "4";
                              }
                            }
                            setState(() {});
                          },
                          child: const Text(
                            '4',
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
    //ssssssss
    throw UnimplementedError();
  }
}
