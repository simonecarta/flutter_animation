import 'dart:math';

import 'package:animation_widget/seconda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 3, 8, 247)),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Flutter animation'),
        routes: {"/seconda": (context) => const seconda()});
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _width = 300;
  double _heigth = 300;
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/seconda');
              },
              child: SizedBox(
                height: 200,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: const Column(
                    children: [
                      Hero(tag: 'immagine copertina',
                      child: Image(image: AssetImage('assets/images/logo.png'))),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Prova Hero Animation",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )

            //   child: Text(
            //     'Prova animazioni',
            //   ),
            // ),
            // AnimatedContainer(
            //   width: _width,
            //   height: _heigth,
            //   color: _color,
            //   duration: const Duration(seconds: 1),
            //   curve: Curves.easeInOutCubicEmphasized,
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(500).toDouble();
            _heigth = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                random.nextInt(256), 1);
          });
        },
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
