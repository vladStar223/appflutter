import 'package:flutter/material.dart';
import 'urv_s.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(ResponsiveApp(
    builder: (context) => MaterialApp(
      //5656
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const Main(), '/u': (context) => urv()},
    ),
  ));
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Главное меню",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return urv();
                      },
                    ),
                  );
                },
                child: const Text('Уравнения'),
              ),
              TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                onPressed: () {},
                child: const Text('Разработка'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
