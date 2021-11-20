import 'package:flutter/material.dart';

import 'Screen_2.dart';

class FilmStar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child:ClipRRect(borderRadius: BorderRadius.circular(100),
                child: Image.asset('assets/mohanlal.jpg')),),

            SizedBox(height: 20),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('Go to home screen')),
          ],
        ),
      ),
    ));
  }
}
