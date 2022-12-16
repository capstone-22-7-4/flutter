import 'package:flutter/material.dart';
import 'widget.dart';

class userEditPage extends StatefulWidget {
  const userEditPage({Key? key}) : super(key: key);

  @override
  State<userEditPage> createState() => _userEditPageState();
}

class _userEditPageState extends State<userEditPage> {
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

        ],
      ),
    );
  }
}
