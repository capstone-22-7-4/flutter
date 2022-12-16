import 'package:flutter/material.dart';
import 'main.dart';

class favorPage extends StatefulWidget {
  const favorPage({Key? key}) : super(key: key);

  @override
  State<favorPage> createState() => _favorPageState();
}

class _favorPageState extends State<favorPage> {

  bool isSoccer = false;
  bool isBasketball = false;
  bool isBaseball = false;
  bool isTennis = false;

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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Text('본인의 운동스타일을 체크해보세요', style: TextStyle(color: Colors.black, fontSize: 25))),
                  SizedBox(height: 30),
                  _favor1('축구'),
                  SizedBox(height: 20),
                  _favor2('농구'),
                  SizedBox(height: 20),
                  _favor3('야구'),
                  SizedBox(height: 20),
                  _favor4('테니스'),
                  SizedBox(height: 20),
                  _doneButton()
                ],
              ),
            ),
          )
      ),
    );
  }

  Widget _favor1(String t){
    return Row(
      children: <Widget>[
        SizedBox(width: 100),
        Text(t, style: TextStyle(fontSize: 20)),
        SizedBox(width: 50),
        Checkbox(
            value: isSoccer,
            onChanged: (value) {
              setState(() {
                isSoccer = value!;
              });
            })
      ],
    );
  }

  Widget _favor2(String t){
    return Row(
      children: <Widget>[
        SizedBox(width: 100),
        Text(t, style: TextStyle(fontSize: 20)),
        SizedBox(width: 50),
        Checkbox(
            value: isBasketball,
            onChanged: (value) {
              setState(() {
                isBasketball = value!;
              });
            })
      ],
    );
  }

  Widget _favor3(String t){
    return Row(
      children: <Widget>[
        SizedBox(width: 100),
        Text(t, style: TextStyle(fontSize: 20)),
        SizedBox(width: 50),
        Checkbox(
            value: isBaseball,
            onChanged: (value) {
              setState(() {
                isBaseball = value!;
              });
            })
      ],
    );
  }

  Widget _favor4(String t){
    return Row(
      children: <Widget>[
        SizedBox(width: 100),
        Text(t, style: TextStyle(fontSize: 20)),
        SizedBox(width: 50),
        Checkbox(
            value: isTennis,
            onChanged: (value) {
              setState(() {
                isTennis = value!;
              });
            })
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
                  minimumSize: Size(250,80),
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

