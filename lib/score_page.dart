import 'package:flutter/material.dart';

class scorePage extends StatefulWidget {
  const scorePage({Key? key}) : super(key: key);

  @override
  State<scorePage> createState() => _scorePageState();
}

class _scorePageState extends State<scorePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications),
              onPressed: () {
                print('notifications button is clicked');
              }),
          IconButton(icon: Icon(Icons.menu),
              onPressed: () {
                print('menu button is clicked');
              }),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          SizedBox(height: 40),
          SizedBox(
              width: 270,
              height: 50,
              child: Text('      Score Board', style: TextStyle(fontSize: 30))
          ),
          SizedBox(height: 20),
          selectLocation(),
          SizedBox(height: 50),
          selectSport(),
          SizedBox(height: 70),
          scoreBoard()
        ],
      ),
    );
  }

  final sportList = ['종목 선택', '축구', '농구', '야구', '테니스'];
  var sportValue = '종목 선택';

  final cityList = ['서울시'];
  var cityValue = '서울시';

  final districtList = ['동작구', '서초구', '강남구', '영등포구'];
  var districtValue = '동작구';

  Widget selectSport() {
    return Center(
        child: SizedBox(
          width: 270,
          child: DropdownButton(
            isExpanded: true,
            disabledHint: Text('종목 선택'),
            value: sportValue,
            items: sportList.map(
                  (value) {
                return DropdownMenuItem(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            onChanged: (value) {
              setState(() {
                sportValue = value!;
              });
            },
          ),
        )
    );
  }

  Widget selectLocation() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              width: 100,
              child: DropdownButton(
                isExpanded: true,
                value: cityValue,
                items: cityList.map(
                      (value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    cityValue = value!;
                  });
                },
              )
          ),
          SizedBox(width: 70),
          SizedBox(
              width: 100,
              child: DropdownButton(
                isExpanded: true,
                value: districtValue,
                items: districtList.map(
                      (value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                onChanged: (value) {
                  setState(() {
                    districtValue = value!;
                  });
                },
              )
          )
        ],
      ),
    );
  }

  //var nameset = ['최동우', '전예원', '임창환']; 나중에쓸거

  Widget scoreBoard(){
    return SizedBox(
        width: 330,
        height: 341,
        child: Image.asset('assets/scoreBoard.png')
    );
  }

}
