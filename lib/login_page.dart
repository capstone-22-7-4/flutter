import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'menu_page.dart';
//import 'package:http/http.dart' as http;

/*void _post() async {
  String url = "192.168.56.1:8880/user/login";

  http.Response response = await http.post(
      Uri.http(url),
      headers: <String, String> {
        'Content-Type' : 'application/json'
      },
      body: <String, String> {
        'email' : 'email_value',
        'pw' : 'pw_value'
      }
  );

  if (response.statusCode == 200) {
    print('로그인 성공');
  } else if (response.statusCode == 401) {
    print('로그인 실패');
  } else {
    print('오류');
    throw Exception('데이터 수신 실패');
  }
}

class Info {

}*/

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
      ),
      body: Center(
          child: Form(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/exercise1.png', width: 120, height: 120),
                    const SizedBox(height: 50),
                    const Text('sporty에 오신 것을 환영합니다',
                        style: TextStyle(color: Colors.black, fontSize: 30)),
                    _emailInput(),
                    _passwordInput(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          primary: Color(0xff9EF3F3),
                          onPrimary: Colors.black,
                          minimumSize: Size(300,80),
                          textStyle: const TextStyle(fontSize: 50, fontFamily: 'Jua')
                      ),
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MenuPage()),);
                      },
                      child: Text('START'),
                    ),
                  ],
                ),
              )
            ),
          )
      ),
    );
  }
}

Widget _emailInput(){
  return Column(
    children: [
      SizedBox(height: 50),
      SizedBox(
        width: 380,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: 'e-mail', filled: true, fillColor: Color(0xff9EF3F3)),
          style: TextStyle(fontSize: 25),
        )
      ),
      SizedBox(height: 40)
    ],
  );
}

Widget _passwordInput(){
  return Column(
    children: [
      SizedBox(
          width: 380,
          child: TextFormField(
             // autovalidateMode: AutovalidateMode.always,
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'password',
                  filled: true,
                  fillColor: Color(0xff9EF3F3)
              ),
              style: TextStyle(fontSize: 25),
            /*validator: (String? value) {
              return (value == null ? '입력된 값이 없습니다' : null);
            },*/
          )
      ),
      SizedBox(height: 40)
    ],
  );
}




