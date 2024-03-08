import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(30),
              child: Text(
                  style: TextStyle(
                    fontSize: 45,
                  ),
                  '로그인'),
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
                      width: 0.1,
                      color: Colors.black,
                    ),
                    color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      'google.png',
                      width: 25,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Text(
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 17,
                            ),
                            'Google로 시작하기'),
                      ),
                    ),
                  ],
                ),
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
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Row(
                    children: [
                      Image.asset(
                        'facebook.png',
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70, 0, 0, 0),
                        child: Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w100),
                            'Facebook으로 시작하기'),
                      ),
                    ],
                  )),
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
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Row(
                    children: [
                      Image.asset(
                        'kakao.png',
                        width: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Text(
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w400),
                            '카카오로 시작하기'),
                      ),
                    ],
                  )),
            ),
          ],
        ),
        Container(
          child: Container(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 0.2,
                  width: 160.0,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Text(style: TextStyle(fontSize: 20), '또는'),
                ),
                Container(
                  height: 0.2,
                  width: 160,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
        Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(9, 4, 0, 0),
                child: Text(
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                    '이메일'),
              ),
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.2,
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(9, 4, 0, 0),
            child: Text(
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                '비밀번호'),
          ),
          width: 400,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.2,
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                child: Container(
                  width: 400,
                  height: 40,
                  color: Colors.lightBlueAccent,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(175, 6, 0, 0),
                    child: Text(style: TextStyle(fontSize: 15), '로그인'),
                  ),
                ),
              ),
              Container(
                width: 400,
                height: 30,
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          '회원가입'),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(203, 0, 0, 0),
                            child: Text(
                                style: TextStyle(fontWeight: FontWeight.bold),
                                '아이디 ・ 비밀번호 찾기'),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 0.2,
                        width: 160.0,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Text(style: TextStyle(fontSize: 20), '또는'),
                      ),
                      Container(
                        height: 0.2,
                        width: 160,
                        color: Colors.black,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: Container(
                width: 400,
                height: 40,
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(135, 6, 0, 0), child: Text(style: TextStyle(fontSize: 15,color: Colors.white), '비회원 주문예약 조회'),
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
