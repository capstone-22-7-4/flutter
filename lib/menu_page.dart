import 'package:flutter/material.dart';
import 'game_page.dart';
import 'class_page.dart';
import 'score_page.dart';
import 'community.dart';
import 'widget.dart';

class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      endDrawer: user(context),
      body: Center(
          child: Column(
            children: <Widget> [
              SizedBox(height: 40),
              personalInfo(),
              SizedBox(height: 50),
              menu(context)
            ],
          )
      )
    );
  }

  Widget personalInfo(){
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10),
          Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  shape: BoxShape.circle
              ),
              child: Image.asset('assets/blank_profile.png', fit: BoxFit.fill)
          ),
          SizedBox(width: 20),
          Container(
              height: 100,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: const [
                        Color(0xffA9F5F2),
                        Colors.white
                      ]
                  )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    '    전예원님 반갑습니다', style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      SizedBox(width: 10),
                      Icon(Icons.location_on),
                      SizedBox(width: 10),
                      Text('현재 지역 : 동작구 상도동')
                    ],
                  )
                ],
              )
          )
        ],
      ),
    );
  }

  Widget menu(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            greenButton1('경기모드', context),
            SizedBox(width: 30),
            greenButton2('고수와 초보모드', context)
          ],
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            greenButton3('Score Board', context),
            SizedBox(width: 30),
            greenButton4('커뮤니티', context)
          ],
        )
      ],
    );
  }

  Widget greenButton1(String s, context){
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => gamePage()),);
      },
      child: Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color(0xffA9F5BC),
                    Colors.grey
                  ]
              )
          ),
          child: Text(s, style: TextStyle(fontSize: 20),)
      ),
    );
  }

  Widget greenButton2(String s, context){
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => classPage()),);
      },
      child: Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color(0xffA9F5BC),
                    Colors.grey
                  ]
              )
          ),
          child: Text(s, style: TextStyle(fontSize: 20),)
      ),
    );
  }

  Widget greenButton3(String s, context){
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => scorePage()),);
      },
      child: Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color(0xffA9F5BC),
                    Colors.grey
                  ]
              )
          ),
          child: Text(s, style: TextStyle(fontSize: 20),)
      ),
    );
  }

  Widget greenButton4(String s, context){
    return InkWell(
      onTap: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => communityPage()),);
      },
      child: Container(
          alignment: Alignment.bottomCenter,
          height: 170,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: const [
                    Color(0xffA9F5BC),
                    Colors.grey
                  ]
              )
          ),
          child: Text(s, style: TextStyle(fontSize: 20),)
      ),
    );
  }
}
