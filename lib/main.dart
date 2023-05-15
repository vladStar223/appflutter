import 'package:flutter/material.dart';
import 'urv_s.dart';
import 'package:responsive_builder/responsive_builder.dart';

//главное меню
void main() {
  var mode;
  runApp(ResponsiveApp(
    builder: (context) => MaterialApp(
      //5656
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      themeMode: mode,
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
        child: Column(
          children: [
            Container(
              height: 50.sh,
              width: 100.sw,
              color: Colors.white,
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
              child: const Text('разработка'),
            )
          ],
        ),
      ),
    );
  }
}
