import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    // Full screen width and height
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

// Height (without SafeArea)
    var padding = MediaQuery.of(context).viewPadding;
    double height1 = height - padding.top - padding.bottom;

// Height (without status bar)
    double height2 = height - padding.top;

// Height (without status and toolbar)
    double height3 = height - padding.top - kToolbarHeight;
    double kheight = 0;
    if (height3 >= 800) {
      kheight = 3;
    } else {
      kheight = 0;
    }
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
    } // подсчет уравненияbkb
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                width: 100.sw,
                height: 3.sh,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 10.sw,
                      height: 5.sh,
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
                        icon: Icon(
                          Icons.dehaze,
                          size: 7.sw,
                        ),
                        splashRadius: 20,
                        padding: EdgeInsets.all(3),
                      ),
                    ),
                    Container(
                      width: 10.sw,
                      height: 5.sh,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.school,
                          size: 2.sh,
                        ),
                        splashRadius: 13,
                        padding: EdgeInsets.all(6),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 1.sh,
              ),
              Text(
                "Решение уравнений",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.sw),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "D  = ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sw),
                  ),
                  if (mid == false)
                    SizedBox(
                      height: 5.sh,
                      width: 50.sw,
                      child: Text(
                        d.toString(),
                        style: TextStyle(fontSize: 10.sw),
                      ),
                    ),
                  if (mid == true)
                    Text(
                      "Дискриминант отрицательный",
                      style: TextStyle(
                          fontSize: 5.sw,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                ],
              ),
              Text(
                "Формула D = b^2 - 4*a*c",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 3.sw),
              ),
              Text("Вид уравнения", style: TextStyle(fontSize: 3.sw)),
              Text("ax^2+bx+cx", style: TextStyle(fontSize: 3.sw)),
              Row(
                children: [
                  SizedBox(
                    width: 12.sw,
                  ),
                  Container(
                    height: 4.sh,
                    color: Colors.white,
                    width: 16.sw,
                    child: Text(
                      "X1 = ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 7.sw),
                    ),
                  ),
                  Container(
                    height: 4.sh,
                    width: 10.sw,
                    color: Colors.white,
                    child: Text(
                      x1.toString(),
                      style: TextStyle(fontSize: 7.sw),
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
                    child: Text(
                      "X2 = ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 7.sw),
                    ),
                  ),
                  Container(
                    height: 4.sh,
                    width: 10.sw,
                    color: Colors.white,
                    child: Text(
                      x2.toString(),
                      style: TextStyle(fontSize: 7.sw),
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
                      children: [
                        Text(
                          "Теоретическая информация",
                          style: TextStyle(fontSize: 3.sw),
                        ),
                      ],
                    ),
                    Text(
                      " X1 =-b+D/2*a",
                      style: TextStyle(fontSize: 4.sw),
                    ),
                    Text(
                      "X2 =-b-D/2*a",
                      style: TextStyle(fontSize: 4.sw),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("A = ", style: TextStyle(fontSize: 4.sw)),
                      Text(
                        a2.toString(),
                        style: TextStyle(fontSize: 4.sw),
                      ),
                      Text("B = ", style: TextStyle(fontSize: 4.sw)),
                      Text(
                        b2.toString(),
                        style: TextStyle(fontSize: 4.sw),
                      ),
                      Text("C = ", style: TextStyle(fontSize: 4.sw)),
                      Text(
                        c2.toString(),
                        style: TextStyle(fontSize: 4.sw),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: (kheight + 2.45).sh,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.sh,
                    width: 13.sw,
                  ),
                  Container(
                    color: Colors.white,
                    height: 2.1.sh,
                    width: 16.sw,
                    child: Text(
                      "A",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 4.sw,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.sh,
                    width: 13.sw,
                  ),
                  Container(
                    color: Colors.white,
                    height: 2.1.sh,
                    width: 16.sw,
                    child: Text(
                      "B",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 4.sw,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.sh,
                    width: 13.sw,
                  ),
                  Container(
                    color: Colors.white,
                    height: 2.1.sh,
                    width: 16.sw,
                    child: Text(
                      "C",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 4.sw,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 100.sw,
                height: 5.sh,
                color: Colors.black12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 1.sh,
                      width: 13.5.sw,
                    ),
                    Container(
                      height: 4.sh,
                      width: 15.sw,
                      color: Colors.white,
                      child: TextButton(
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
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              a.toString(),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 1.sh,
                      width: 14.sw,
                    ),
                    Container(
                      height: 4.sh,
                      width: 15.sw,
                      color: Colors.white,
                      child: TextButton(
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
                          //3434
                        },
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              b.toString(),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 1.sh,
                      width: 14.sw,
                    ),
                    Container(
                      height: 4.sh,
                      width: 15.sw,
                      color: Colors.white,
                      child: TextButton(
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
                        child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              c.toString(),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 300.sw,
                height: 41.45.sh,
                color: Colors.black12,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
                          width: 20.sw,
                          color: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              if (a1 == true) {
                                if (a.isNotEmpty) {
                                  a = a.substring(0, a.length - 1);
                                }
                              }
                              if (b1 == true) {
                                if (b.isNotEmpty) {
                                  b = b.substring(0, b.length - 1);
                                }
                              }
                              if (c1 == true) {
                                if (c.isNotEmpty) {
                                  c = c.substring(0, c.length - 1);
                                }
                              }
                              setState(() {});
                            },
                            icon: const Icon(Icons.dangerous_outlined),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                                  a = "+";
                                }
                                setState(() {});
                              }
                              if (b1 == true) {
                                if (b == "0" || b.isEmpty) {
                                  b = "+";
                                }
                                setState(() {});
                              }
                              if (c1 == true) {
                                if (c == "0" || c.isEmpty) {
                                  c = "+";
                                }
                                setState(() {});
                              }
                            },
                            child: Text(
                              '+',
                              style: TextStyle(fontSize: 8.sw),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 10.sh,
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
                          height: 11.34.sh,
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
                          height: 11.34.sh,
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
                          height: 11.34.sh,
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
                          height: 11.34.sh,
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
                          height: 11.34.sh,
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
