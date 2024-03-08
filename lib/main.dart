import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '테스트페이지'),
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
      appBar: AppBar(
        actions: [
          Icon(Icons.close),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                child: Text(style: TextStyle(fontSize: 45,), '로그인'),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 400,
                  height: 40,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      color: Colors.white),
                  child: Text(
                    textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                      'Google로 시작하기'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 400,
                  height: 40,
                  decoration: BoxDecoration(

                      color: Colors.blue),
                  child: Text(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100
                      ),
                      'Facebook으로 시작하기'),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(5),
                  width: 400,
                  height: 40,
                  decoration: BoxDecoration(

                      color: Colors.yellow),
                  child: Text(

                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                      '카카오로 시작하기'),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

