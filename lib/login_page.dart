import 'package:flutter/material.dart';
import 'menu_page.dart';

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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Image.asset('assets/exercise1.png'),
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
                        minimumSize: Size(500,100),
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
            ),
          )
      ),
    );
  }
}

Widget _emailInput(){
  return Column(
    children: [
      SizedBox(height: 70),
      SizedBox(
        width: 700,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: 'e-mail', filled: true, fillColor: Color(0xff9EF3F3)),
          style: TextStyle(fontSize: 30),
        )
      ),
      SizedBox(height: 50)
    ],
  );
}

Widget _passwordInput(){
  return Column(
    children: [
      SizedBox(
          width: 700,
          child: TextFormField(
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  labelText: 'password', filled: true, fillColor: Color(0xff9EF3F3)),
              style: TextStyle(fontSize: 30)
          )
      ),
      SizedBox(height: 70)
    ],
  );
}




