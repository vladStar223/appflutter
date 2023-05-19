import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:google_fonts/google_fonts.dart'; //шрифт

class urv extends StatefulWidget {
  @override
  State<urv> createState() => _urvState();
}

class _urvState extends State<urv> {
  @override
  //конечное значение

  void number_selection(var n, var x) {
    if (x != 0) {
      var y = x + n;
      y.toString(); /////////////////////////////////////////////////изменить
    }
  }

/////////sdsdsdsds
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
      kheight = 2.67;
    } else {
      kheight = 0;
    }
    bool eql = false;
    var x = "0"; // подсчет уравненияbkb
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
                style: TextStyle(fontFamily: 'Mono', fontSize: 8.2.sw),
              ),
              urv2(),
              SizedBox(
                height: (kheight + 2.45).sh,
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
                              number_selection('1', x);
                              setState(() {});
                            },
                            child: Text(
                              'N',
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
                              number_selection('7', x);
                              setState(() {});
                            },
                            child: Text('7', style: TextStyle(fontSize: 8.sw)),
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
                              number_selection('8', x);
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
                              number_selection('9', x);
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
                          child: IconButton(
                            onPressed: () {
                              if (x.isNotEmpty) {
                                x = x.substring(0, x.length - 1);
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
                              number_selection('1', x);
                              setState(() {});
                            },
                            child: Text(
                              'N',
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
                              number_selection('4', x);
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
                              number_selection('5', x);
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
                              number_selection('6', x);
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
                              if (x == "0" || x.isEmpty) {
                                x = "+";
                              }
                              setState(() {});
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
                              number_selection('1', x);
                              setState(() {});
                            },
                            child: Text(
                              'N',
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
                              number_selection('1', x);

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
                              number_selection('2', x);
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
                              number_selection('3', x);
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
                          child: TextButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.orange),
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            onPressed: () {
                              if (x == "0" || x.isEmpty) {
                                x = "-";
                              }
                              setState(() {});
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
                              number_selection('1', x);
                              setState(() {});
                            },
                            child: Text(
                              'N',
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
                              number_selection('1', x);
                              setState(() {});
                            },
                            child: Text(
                              'N',
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
                              x = "0";
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
                              if (x != "0") {
                                x = x + ".";
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

class urv2 extends StatefulWidget {
  @override
  State<urv2> createState() => _urv2State();
}

class _urv2State extends State<urv2> {
  @override
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
  double c2 = 0;
  void decideurv() {
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

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D  = ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sw),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 7.sw),
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
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 7.sw),
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
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
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
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
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
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
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
      ],
    );
    throw UnimplementedError();
  }
}
