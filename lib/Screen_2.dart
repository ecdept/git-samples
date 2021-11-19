import 'package:flutter/material.dart';
class ScreenTwo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 200,
          width: 300,
          child: Center(
            child:Text('hai'),
          ),
        ),
      ),
    );
  }
}
