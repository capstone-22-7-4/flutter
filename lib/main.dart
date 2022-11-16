import 'package:flutter/material.dart'; //디자인 기본 라이브러리 import
import 'login_page.dart';
import 'sign_page.dart';

void main() {
  runApp(const MyApp());
}  //앱 시작 MyApp(위젯)

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sporty',
      theme: ThemeData(fontFamily: 'Jua'),
      home: HomePage(), //앱이 정상적으로 실행되었을 때 가장 먼저 보여주는 화면
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
            Image.asset('assets/exercise.png'),
            const SizedBox(height: 50), //간격조정
            Text('Sporty', style: TextStyle(color: Colors.black, fontSize: 50, fontFamily: "Jua")),
            const SizedBox(height: 70),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color(0xff9EF3F3),
                  onPrimary: Colors.black,
                  minimumSize: Size(500,100),
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
                  minimumSize: Size(500,100),
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

