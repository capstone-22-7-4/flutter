import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.pop(context, "OK");
            FocusScope.of(context).unfocus();
          },
        ),

      ),
    );
  }
}
