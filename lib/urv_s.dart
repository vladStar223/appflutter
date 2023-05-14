import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:responsive_builder/responsive_builder.dart';

class urv extends StatefulWidget {
  @override
  State<urv> createState() => _urvState();
}

class _urvState extends State<urv> {
  bool a1 =
      true; //переменая отвечает за состояние нажатие на кнопку и ввод коэфицента а.//  примечание лучше эти перменые записать в enum.
  bool b1 =
      false; //переменая отвечает за состояние нажатие на кнопку и ввод коэфицента b.//  примечание лучше эти перменые записать в enum.
  bool c1 =
      false; //переменая отвечает за состояние нажатие на кнопку и ввод коэфицента с.//  примечание лучше эти перменые записать в enum.
  bool eql =
      false; //отвечает за нажатие на кнопку равно и нажатие происходит подсчет
  bool mid =
      false; //отвечает за показав при отрицальном дискриментате "дискриментат отрицательный"
  var a =
      "0"; //отвечает за нажатие на кнопку равно и нажатие происходит подсчет
  var b =
      "0"; //отвечает за нажатие на кнопку равно и нажатие происходит подсчет
  var c =
      "0"; //отвечает за нажатие на кнопку равно и нажатие происходит подсчет
  double d = 0; //отвечает за дискриминат
  double x1 = 0; //конечное значение
  double x2 = 0; //конечное значение
  double a2 = 0; //конечное значение
  double b2 = 0; //конечное значение
  double c2 = 0; //конечное значение
  void k() {
    //пример написания функции
    if (kDebugMode) {
      print("aa");
    }
  }

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
    } // подсчет уравнения

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 5.sh),
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
                  SizedBox(
                    width: 12.sw,
                  ),
                  Container(
                    height: 4.sh,
                    color: Colors.white,
                    width: 16.sw,
                    child: const Text(
                      "X1 = ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    height: 4.sh,
                    width: 10.sw,
                    color: Colors.white,
                    child: Text(
                      x1.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 0.1.sh,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12.sw,
                  ),
                  Container(
                    height: 4.sh,
                    color: Colors.white,
                    width: 16.sw,
                    child: const Text(
                      "X2 = ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Container(
                    height: 4.sh,
                    width: 10.sw,
                    color: Colors.white,
                    child: Text(
                      x2.toString(),
                      style: const TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 1.sh,
              ),
              Container(
                width: 55.sw,
                height: 10.sh,
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
              SizedBox(
                height: 2.sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("A"),
                  Text("B"),
                  Text("C"),
                ],
              ),
              Container(
                width: 100.sw,
                height: 7.sh,
                color: Colors.black12,
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
              SizedBox(
                height: 2.sh,
              ),
              Container(
                width: 300.sw,
                height: 40.sh,
                color: Colors.black12,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 9.sh,
                          width: 19.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              if (a1 == true) {
                                //проверка нажата ли кнопка а1 и нужно ли добавлять к этой кнопке значения
                                if (a != "0") {
                                  // проверка числа является ли оно нулем как нужно заменить его
                                  a = "${a}1"; // это способ сложить  строку со строкой в дарте
                                } else {
                                  a = "1"; // если равен нулю но при нажатой единице  будет задаваться единицей
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
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text('1', style: TextStyle(fontSize: 8.sw)),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '2',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '3',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Main();
                                    },
                                  ),
                                );
                              },
                              icon: const Icon(Icons.exit_to_app)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 9.sh,
                          width: 19.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '4',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '5',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '6',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '4',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 9.sh,
                          width: 19.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '7',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '8',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '9',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              if (a1 == true) {
                                if (a == "0" || a.isEmpty) {
                                  a = "-";
                                }
                                setState(() {});
                              }
                              if (b1 == true) {
                                if (b == "0" || b.isEmpty) {
                                  b = "-";
                                }
                                setState(() {});
                              }
                              if (c1 == true) {
                                if (c == "0" || c.isEmpty) {
                                  c = "-";
                                }
                                setState(() {});
                              }
                            },
                            child: Text(
                              '-',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 9.sh,
                          width: 19.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
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
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              if (a1 == true) {
                                if (a != "0") {
                                  a = "${a}0";
                                } else {
                                  a = "0";
                                }
                              }
                              if (b1 == true) {
                                if (b != "0") {
                                  b = "${b}0";
                                } else {
                                  b = "0";
                                }
                              }
                              if (c1 == true) {
                                if (c != "0") {
                                  c = "${c}0";
                                } else {
                                  c = "0";
                                }
                              }
                              setState(() {});
                            },
                            child: Text(
                              '0',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              if (a1 == true) {
                                if (a != "0") {
                                  a = a + ".";
                                }
                              }
                              if (b1 == true) {
                                if (b != "0") {
                                  b = b + ".";
                                }
                              }
                              if (c1 == true) {
                                if (c != "0") {
                                  c = c + ".";
                                }
                              }
                              setState(() {});
                            },
                            child: Text(
                              ',',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 1,
                        ),
                        Container(
                          height: 9.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        side: const BorderSide(
                                            color: Colors.orange))),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              eql = true;
                              setState(() {});
                            },
                            child: Text(
                              '=',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.sh,
                    ),
                    const Text("Product by Vladislav Kolm")
                  ],
                ),
              ),
            ], //76
          ),
        ),
        backgroundColor: Colors.white,
      );
    });
  }
}
