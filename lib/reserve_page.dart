import 'package:flutter/material.dart';
import 'game_page.dart';
import 'widget.dart';

class reservePage extends StatefulWidget {
  const reservePage({Key? key}) : super(key: key);

  @override
  State<reservePage> createState() => _reservePageState();
}

class _reservePageState extends State<reservePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('예약하기', style: TextStyle(fontSize: 20)),
          centerTitle: true
      ),
      body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 25),
              Text('노량진 축구장', style: TextStyle(fontSize: 25)),
              SizedBox(height: 20),
              dayAndTime(),
              SizedBox(height: 20),
              minNum(),
              SizedBox(height: 10),
              maxNum(),
              SizedBox(height: 20),
              Text('필독 공지'),
              SizedBox(height: 30),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    primary: Color(0xffF78181),
                    onPrimary: Colors.black,
                    minimumSize: Size(200,50),
                    textStyle: const TextStyle(fontSize: 25, fontFamily: 'Jua')
                ),
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => gamePage()),);
                },
                child: Text('등록 완료'),
              ),
            ],
          )
      ),
    );
  }  //Widget

  DateTime? _selectDate;

  List<String> dropdownList = ['시간', '18:00~20:00', '20:00~22:00'];
  String? selectedDropdown = '시간';

  Widget dayAndTime() {
    return Row(
      children: <Widget>[
        SizedBox(width: 40),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Color(0xff08088A),
                onPrimary: Colors.white,
            ),
            onPressed: () {
              Future<DateTime?> selectedDate = showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(2022, 12, 31),
                  builder: (BuildContext context, Widget? child) {
                    return Theme(
                      data: ThemeData.light(),
                      child: child as Widget,
                    );
                    });
              selectedDate.then((date) {
                setState(() {
                  _selectDate = date;
                });
              });
            },
            child: _selectDate != null ? Text('${_selectDate?.year} / ${_selectDate?.month} / ${_selectDate?.day}')
                : Text('날짜 선택')
        ),
        SizedBox(width: 40),
        DropdownButton(
          value: selectedDropdown,
          items: dropdownList.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (value) {
            setState(() {
              selectedDropdown = value!;
            });
          },
        ),
      ],
    );
  }

  final minNumValue = [10, 11, 12, 13, 14, 15];
  int? minValue = 10;

  final maxNumValue = [18, 19, 20, 21, 22];
  int? maxValue = 18;

  Widget minNum() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        Text('최소 인원 선택'),
        SizedBox(width: 15),
        DropdownButton<int>(
            value: minValue,
            items: minNumValue.map((value) => DropdownMenuItem(
                value: value,
                child: Text(value.toString()))).toList(),
            onChanged: (value){
              setState(() {
                minValue = value;
              });
            })
      ],
    );
  }

  Widget maxNum() {
    return Row(
      children: <Widget>[
        SizedBox(width: 30),
        Text('최대 인원 선택'),
        SizedBox(width: 15),
        DropdownButton<int>(
            value: maxValue,
            items: maxNumValue.map((value) => DropdownMenuItem(
                value: value,
                child: Text(value.toString()))).toList(),
            onChanged: (value){
              setState(() {
                maxValue = value;
              });
            })
      ],
    );
  }

} // 예약하는 창

class reserveListPage extends StatefulWidget {
  const reserveListPage({Key? key}) : super(key: key);

  @override
  State<reserveListPage> createState() => _reserveListPageState();
}

class _reserveListPageState extends State<reserveListPage> {

  var didList = [
    '이용예정',
    '이용완료',
    '이용완료',
    '이용완료',
    '이용완료',
  ];

  var titleList = [
    '12월 11일',
    '12월 7일',
    '11월 29일',
    '11월 28일',
    '11월 20일'
  ];

  var nameList = [
    '보라매공원 인조잔디 축구장',
    '노량진 축구장',
    '보라매공원 인조잔디 축구장',
    '노들나루공원 축구장',
    '노량진 축구장'
  ];

  var imageList = [
    'assets/보라매공원인조잔디.jpg',
    'assets/노량진.jpg',
    'assets/보라매공원인조잔디.jpg',
    'assets/노들나루공원.jpg',
    'assets/노량진.jpg'
  ];

  var description = [
    '모집중',
    '최종 모집 인원 : 18명',
    '최종 모집 인원 : 17명',
    '최종 모집 인원 : 13명',
    '최종 모집 인원 : 15명',
  ];

  var playTime = [
    '18 : 00 ~ 20 : 00',
    '14 : 00 ~ 16 : 00',
    '06 : 00 ~ 08 : 00',
    '20 : 00 ~ 22 : 00',
    '14 : 00 ~ 16 : 00',
  ];

  var pay = [
    '이용 요금 : 55000',
    '이용 요금 : 60000',
    '이용 요금 : 55000',
    '이용 요금 없음',
    '이용 요금 : 60000',
  ];

  void showPopup(context, name, title, image, description, did, playT, pay) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    image,
                    width: 200,
                    height: 200,
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  did,
                  style: TextStyle(
                    fontSize: 10,
                    color: Colors.grey[500],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    //fontWeight: FontWeight.bold,
                    color: Colors.black45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          description,
                          //maxLines: 3, // 최대 몇줄까지 보여줄 것인가
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                          //textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 8,),
                        Text(
                          playT,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(height: 8,),
                        Text(
                          pay,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[500],
                          ),
                        )
                      ],
                    ),
                  )
                ),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('close'),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      endDrawer: user(context),
      body: ListView.builder(
        itemCount: titleList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              debugPrint(titleList[index]); // print에서 밑줄이 생긴다면 debugPrint도 해볼 것
              showPopup(
                  context, nameList[index], titleList[index], imageList[index], description[index], didList[index], playTime[index], pay[index]);
            },
            child: Card(
              child: Row(
                children: [
                  SizedBox(
                    // sizedbox는 const를 기본적으로 가지고 있어서 instance를 생성할 필요가 없다. container는 색 등 다양하게 꾸미지만 sizedbox는 공간만 할당해주는 것이기에 공간만 필요하면 sizedbox가 더 유용하다.
                    width: 100,
                    height: 100,
                    child: Image.asset((imageList[index])),
                  ),
                  SizedBox(width: 10),
                  Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            didList[index],
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey[500],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            titleList[index],
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              nameList[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              description[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              playTime[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              pay[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

