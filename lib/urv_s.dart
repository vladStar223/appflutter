import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'main.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:google_fonts/google_fonts.dart'; //шрифт

class urv extends StatefulWidget {
  @override
  State<urv> createState() => _urvState();
}

class _urvState extends State<urv> {
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

    return ChangeNotifierProvider(
      create: (context) => Tbutton(),
      child: Consumer<Tbutton>(
        builder: (context, provider, child) => Scaffold(
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
                  height: (kheight + 2.40).sh,
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
                                print(x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("7", x);
                              },
                              child:
                                  Text('7', style: TextStyle(fontSize: 8.sw)),
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("8", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("9", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("d", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("4", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("5", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("6", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("+", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("2", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("3", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("-", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("1", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection("0", x);
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
                                var x =
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc;
                                context
                                    .read<Tbutton>()
                                    .number_selection(".", x);
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
                                context.read<Tbutton>().eql1 = true;
                                context.read<Tbutton>().decideurv(
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc[0],
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc[1],
                                    Provider.of<Tbutton>(context, listen: false)
                                        .kabc[2]);
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
        ),
      ),
    );
  }
}

class Tbutton extends ChangeNotifier {
  List<bool> nButton = [true, false, false];
  List kabc = ["0", "0", "0"];
  bool eql1 = false;
  bool mid = false;
  double d = 0; //отвечает за дискриминат
  double x1 = 0; //конечное значение
  double x2 = 0; //конечное значение
  double a2 = 0; //конечное значение
  double b2 = 0; //конечное значение
  double c2 = 0;
  void chage(var a, var b, var c) {
    if (a == true) {
      nButton[0] = true;
      nButton[1] = false;
      nButton[2] = false;
    }
    if (b == true) {
      nButton[1] = true;
      nButton[0] = false;
      nButton[2] = false;
    }
    if (c == true) {
      nButton[2] = true;
      nButton[0] = false;
      nButton[1] = false;
    }
    notifyListeners();
  }

  void number_selection(var n, kabc) {
    var y;
    if (nButton[0] == true) {
      if (n == "d") {
        var x;
        x = kabc[0];
        if (x.isNotEmpty) {
          x = x.substring(0, x.length - 1);
        }
        kabc[0] = x;
      } else {
        if (kabc[0] == "0") {
          y = n;
          kabc[0] = y.toString();
        } else {
          y = kabc[0];
          y = y + n;
          kabc[0] = y.toString();
        }
      }
    }
    if (nButton[1] == true) {
      if (n == "d") {
        var x;
        x = kabc[1];
        if (x.isNotEmpty) {
          x = x.substring(0, x.length - 1);
        }
        kabc[1] = x;
      } else {
        if (kabc[1] == "0") {
          y = n;
          kabc[1] = y.toString();
        } else {
          y = kabc[1];
          y = y + n;
          kabc[1] = y.toString();
        }
      }
    }
    if (nButton[2] == true) {
      if (n == "d") {
        var x;
        x = kabc[2];
        if (x.isNotEmpty) {
          x = x.substring(0, x.length - 1);
        }
        kabc[2] = x;
      } else {
        if (kabc[2] == "0") {
          y = n;
          kabc[2] = y.toString();
        } else {
          y = kabc[2];
          y = y + n;
          kabc[2] = y.toString();
        }
      }
    }
    notifyListeners();
  }

  void decideurv(var a, var b, var c) {
    a2 = double.parse(a);
    b2 = double.parse(b);
    c2 = double.parse(c);
    d = (b2 * b2 - 4 * a2 * c2);
    if (d > 0) {
      d = sqrt(d);
      x1 = (-b2 + d) / (2 * a2);
      x2 = (-b2 - d) / (2 * a2);
      mid = false;
    }
    if (d == 0) {
      x1 = -b2 / 2 * a2;
      mid = false;
    }
    if (d < 0) {
      mid = true;
    }
    eql1 = false;

    kabc[0] = "0";
    kabc[1] = "0";
    kabc[2] = "0";
    notifyListeners();
  }
}

class urv2 extends StatefulWidget {
  @override
  State<urv2> createState() => _urv2State();
}

class _urv2State extends State<urv2> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var x1 = Provider.of<Tbutton>(context).x1;
    var x2 = Provider.of<Tbutton>(context).x2;
    var a2 = Provider.of<Tbutton>(context, listen: false).a2;
    var b2 = Provider.of<Tbutton>(context, listen: false).b2;
    var c2 = Provider.of<Tbutton>(context, listen: false).c2;
    var d = Provider.of<Tbutton>(context, listen: false).d;

    //НУЖНО ДОБАВИТЬ ЕЩЕ ДВЕ ПЕРЕМЕННЫХ И УБРАТЬ ПРИНТЫ
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "D  = ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sw),
            ),
            if (Provider.of<Tbutton>(context).mid == false)
              SizedBox(
                height: 5.sh,
                width: 50.sw,
                child: Text(
                  d.toString(),
                  style: TextStyle(fontSize: 10.sw),
                ),
              ),
            if (Provider.of<Tbutton>(context).mid == true)
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
                    context.read<Tbutton>().chage(true, false, false);
                    print(Provider.of<Tbutton>(context, listen: false)
                        .kabc
                        .toString());
                    setState(() {});
                  },
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                          Provider.of<Tbutton>(context).kabc[0].toString())),
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
                    context.read<Tbutton>().chage(false, true, false);
                    setState(() {});
                    //3434
                  },
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        Provider.of<Tbutton>(context).kabc[1].toString(),
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
                    context.read<Tbutton>().chage(false, false, true);
                    setState(() {});
                  },
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        Provider.of<Tbutton>(context).kabc[2].toString(),
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
