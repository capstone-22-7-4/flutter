import 'package:flutter/material.dart';
import 'widget.dart';

class communityPage extends StatefulWidget {
  const communityPage({Key? key}) : super(key: key);

  @override
  State<communityPage> createState() => _communityPageState();
}

class _communityPageState extends State<communityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      endDrawer: user(context),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          element('자유게시판', Icons.note_alt),
          element('팁/노하우', Icons.priority_high),
          element('불량 유저 신고', Icons.report),
          element('우리 동네 모임', Icons.groups),
          element('공지사항', Icons.campaign)
        ],
      ),
    );
  }

  Widget element(String name, IconData i) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Icon(i),
          SizedBox(width: 30),
          Text(name)
        ],
      ),
    );
  }
}
