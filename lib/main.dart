import 'package:flutter/material.dart'; //디자인 기본 라이브러리 import
import 'login_page.dart';
import 'sign_page.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}  //앱 시작 MyApp(위젯)

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sporty',
      theme: ThemeData(fontFamily: 'Jua'),
      home: logoPage(), //앱이 정상적으로 실행되었을 때 가장 먼저 보여주는 화면
    );
  }
}

class logoPage extends StatefulWidget {
  const logoPage({Key? key}) : super(key: key);

  @override
  State<logoPage> createState() => _logoPageState();
}

class _logoPageState extends State<logoPage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff9EF3F3),
      child: Expanded(
        child: Image.asset('assets/first.png')
      )
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset('assets/exercise.png', width: 300, height: 300),
            const SizedBox(height: 40), //간격조정
            Text('Sporty', style: TextStyle(color: Colors.black, fontSize: 50, fontFamily: "Jua")),
            const SizedBox(height: 50),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color(0xff9EF3F3),
                  onPrimary: Colors.black,
                  minimumSize: Size(350,80),
                  textStyle: const TextStyle(fontSize: 30, fontFamily: 'Jua')
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()),);
              },
              child: Text('로그인'),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color(0xff9EF3F3),
                  onPrimary: Colors.black,
                  minimumSize: Size(350,80),
                  textStyle: const TextStyle(fontSize: 30, fontFamily: 'Jua')
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignPage()),);
              },
              child: Text('회원가입'),
            ),
          ],
        )
        ),
      );
  }
}

