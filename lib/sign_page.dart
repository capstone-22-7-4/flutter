import 'package:flutter/material.dart';
import 'favor_page.dart';

class SignPage extends StatefulWidget {
  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final FocusNode _nameFocus = new FocusNode();
  final FocusNode _emailFocus = new FocusNode();
  final FocusNode _passwordFocus = new FocusNode();
  final FocusNode _passwordagainFocus = new FocusNode(); // 유효성검사할때 사용예정

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black
      ),
      body: Center(
          child: Form(
              key: _formKey,
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 10, 20),
                          child: Text('회원가입', style: TextStyle(color: Colors.black, fontSize: 40))),
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                          child: Text('이름', style: TextStyle(color: Colors.black, fontSize: 20))),
                      _showNameInput(),
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                          child: Text('이메일', style: TextStyle(color: Colors.black, fontSize: 20))),
                      _showEmailInput(),
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                          child: Text('비밀번호', style: TextStyle(color: Colors.black, fontSize: 20))),
                      _showPasswordInput(),
                      Padding(padding: EdgeInsets.fromLTRB(60, 10, 0, 10),
                          child: Text('비밀번호 확인', style: TextStyle(color: Colors.black, fontSize: 20))),
                      _showPasswordAgainInput(),
                      _nextButton()
                    ],
                  ),
                )
              ),
          )
      ),
    );
  }

  Widget _showNameInput(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
          height: 50,
          child: TextFormField(
            focusNode: _nameFocus,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'Name'),
            style: TextStyle(fontSize: 20),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _showEmailInput(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
          height: 50,
          child: TextFormField(
            focusNode: _emailFocus,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'E-mail'),
            style: TextStyle(fontSize: 20),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _showPasswordInput(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
          height: 50,
          child: TextFormField(
            focusNode: _passwordFocus,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'Password'),
            style: TextStyle(fontSize: 20),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _showPasswordAgainInput(){
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          margin: EdgeInsets.only(left: 30, right: 30, bottom: 10, top: 10),
          height: 50,
          child: TextFormField(
            focusNode: _passwordagainFocus,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))), labelText: 'Password'),
            style: TextStyle(fontSize: 20),
            // 유효성 검사 나중에 넣기 validator: (value) =>
          ),
        )
      ],
    );
  }

  Widget _nextButton(){
    return Padding(padding: EdgeInsets.fromLTRB(0,30,0,0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              primary: Color(0xffF78181),
              onPrimary: Colors.black,
              minimumSize: Size(200, 60),
              textStyle: const TextStyle(fontSize: 50, fontFamily: 'Jua')
          ),
          onPressed: () {
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => favorPage()),);
          },
          child: Text('next'),
        )
      )
    );
  }
}