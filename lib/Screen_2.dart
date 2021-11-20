import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_samples/film_Star.dart';
import 'package:git_samples/football.dart';
import 'cricket.dart';


class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen1'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                color: Colors.teal,
                child: Center(
                  child: Text('You are logged in', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                  onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cricket(),));
              }, child: Text('cricket')),
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FilmStar(),));
              }, child: Text('film Star',)),
              SizedBox(height: 15),
              ElevatedButton(onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FootBall(),));
              }, child: Text('football')),
              SizedBox(height: 150),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Cricket(),));
                  }, child: Text('Logout')),
            ],
          ),
        ),
        body: Container(
          //height: 200,
          //width: 300,
          color: Colors.amber[200],
          child: Center(
            child: Text('Click on the top menu button',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
        ),
      ),
    );
  }
}
