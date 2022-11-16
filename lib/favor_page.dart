import 'package:flutter/material.dart';
import 'main.dart';

class favorPage extends StatefulWidget {
  const favorPage({Key? key}) : super(key: key);

  @override
  State<favorPage> createState() => _favorPageState();
}

class _favorPageState extends State<favorPage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(70, 10, 0, 30),
                      child: Text('회원가입', style: TextStyle(color: Colors.black, fontSize: 50))),
                  Padding(padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
                      child: Text('이름', style: TextStyle(color: Colors.black, fontSize: 30))),
                  _favor1Input(),
                  Padding(padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
                      child: Text('이메일', style: TextStyle(color: Colors.black, fontSize: 30))),
                  _favor2Input(),
                  Padding(padding: EdgeInsets.fromLTRB(70, 10, 0, 10),
                      child: Text('비밀번호', style: TextStyle(color: Colors.black, fontSize: 30))),
                  _favor3Input(),
                  _doneButton()
                ],
              ),
            ),
          )
      ),
    );
  }


  Widget _favor1Input(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 40, right: 50, bottom: 30, top: 10),
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'Name'),
            style: TextStyle(fontSize: 30),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _favor2Input(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 40, right: 50, bottom: 30, top: 10),
          height: 50,
          child: TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'E-mail'),
            style: TextStyle(fontSize: 30),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _favor3Input(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 40, right: 50, bottom: 30, top: 10),
          height: 50,
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'Password'),
            style: TextStyle(fontSize: 30),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _doneButton(){
    return Padding(padding: EdgeInsets.fromLTRB(0,50,0,0),
        child: Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  primary: Color(0xffF78181),
                  onPrimary: Colors.black,
                  minimumSize: Size(300,100),
                  textStyle: const TextStyle(fontSize: 50, fontFamily: 'Jua')
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()),);
              },
              child: Text('done'),
            )
        )
    );
  }
}

