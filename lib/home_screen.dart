import 'package:flutter/material.dart';
import 'package:git_samples/loginscreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('HOME PAGE'),
            actions: [
              IconButton(onPressed: (){
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                    builder: (ctx)=>LoginScreen()), (route) => false);
              },icon: Icon(Icons.ac_unit),)
            ],
          ),
          body: Center(child: Text('Home Screen'),),
        ));
  }
}
