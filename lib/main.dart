import 'dart:isolate';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Center(
                    child: Text(
                  'one',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                )),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Center(
                    child: Text(
                      'two',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 196,
              height: 48,
              child: TextButton(
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blue)),
                onPressed: () {},
                child: const Center(
                    child: Text(
                      'three',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    )),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
