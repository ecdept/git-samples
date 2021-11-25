import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_samples/bottom_navigation.dart';
class Bottomfield extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
              child: ElevatedButton(onPressed: (){
                showbottomsheet(context);
              },
                  child: Text('settings'),
       ),
     ),
        ),
    );
  }


  Future<void>showbottomsheet(BuildContext context)async{
    showModalBottomSheet(context: context, builder: (context1){
      return Container(
        width: double.infinity,
        height: 300,
        color: Colors.pink[200],
        child: ListView(
          //padding: EdgeInsets.only(left: 50),
          children:[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo,size: 50,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.add_to_drive_rounded,size: 50,)),

            ],
          ),

            Padding(
              padding: const EdgeInsets.only(top:150,left: 70.0,right: 70),
              child: ElevatedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>BottomNavigation()));
              }, child: Text('Go to Bottom Navigation')),
            )
          ]
        ),
      );
    }
    );
  }

}
