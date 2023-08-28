import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glass/FrostedGlass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: FrostedGlass(
          thechild: "Hello World",
          theheight: double.infinity,
          thewidth: double.infinity,
        ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     FrostedGlass(
        //       thechild: "Hello World",
        //       theheight: 100,
        //       thewidth: 200,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     FrostedGlass(
        //       thechild: "Hello World",
        //       theheight: 100,
        //       thewidth: 200,
        //     ),
        //     SizedBox(
        //       height: 20,
        //     ),
        //     FrostedGlass(
        //       thechild: "Hello World",
        //       theheight: 100,
        //       thewidth: 200,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
