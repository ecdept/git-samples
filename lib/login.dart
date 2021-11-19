import 'package:flutter/material.dart';
import 'package:git_samples/Screen_2.dart';
class LoginPage extends StatelessWidget {
final username= TextEditingController();
final password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: username,
                decoration: InputDecoration(hintText: 'username',
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                ),
              ),
              SizedBox(height: 20,),
              TextField(
                controller: password,
                decoration: InputDecoration(hintText: 'password',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink))
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: ()
              {
                  Checklogin(context);
                  print(username);
              },
                  child: Text('login'))
            ],
          ),
        ),
      ),
    );

  }

  Checklogin(context)
  {
    if(username.text==password.text)
    {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTwo()));
       // print(username);
        print(username.text);
    }
    else{
      print('not');
    }
    }
}
