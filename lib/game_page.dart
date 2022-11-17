import 'package:flutter/material.dart';

class gamePage extends StatefulWidget {
  const gamePage({Key? key}) : super(key: key);

  @override
  State<gamePage> createState() => _gamePageState();
}

class _gamePageState extends State<gamePage> {

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
        children: <Widget> [
          SizedBox(height: 40),
          selectSport(),
          SizedBox(height: 20),
          selectLocation(),
          SizedBox(height: 50),
          showMap()
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

  Widget showMap() {
    return Center(
      child: sportValue=='축구' ? SizedBox(
          width: 500,
          height: 357,
          child: Image.asset('assets/map_pin.png')
      ) : SizedBox(
          width: 550,
          height: 392,
          child: Image.asset('assets/map.png')
      )
    );
  }
}