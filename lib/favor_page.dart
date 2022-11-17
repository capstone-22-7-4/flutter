import 'package:flutter/material.dart';
import 'main.dart';

class favorPage extends StatefulWidget {
  const favorPage({Key? key}) : super(key: key);

  @override
  State<favorPage> createState() => _favorPageState();
}

class _favorPageState extends State<favorPage> {

  bool? isSoccer = false;
  bool? isBasketball = false;
  bool? isBaseball = false;
  bool? isTennis = false;

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
                  Padding(padding: EdgeInsets.fromLTRB(70, 10, 0, 30),
                      child: Text('본인의 운동스타일을 체크해보세요', style: TextStyle(color: Colors.black, fontSize: 50))),
                  SizedBox(height: 50),
                  _favor('축구', isSoccer),
                  SizedBox(height: 30),
                  _favor('농구', isBasketball),
                  SizedBox(height: 30),
                  _favor('야구', isBaseball),
                  SizedBox(height: 30),
                  _favor('테니스', isTennis),
                  SizedBox(height: 30),
                  _doneButton()
                ],
              ),
            ),
          )
      ),
    );
  }

  Widget _favor(String t, bool? v){
    return Row(
      children: [
        SizedBox(width: 150),
        Text(t),
        SizedBox(width: 50),
        Checkbox(
            value: v,
            onChanged: (value) {
              setState(() {
                v = value;
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

