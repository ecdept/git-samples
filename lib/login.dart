import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:git_samples/Screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginPage extends StatelessWidget {
final username= TextEditingController();
final password= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 30),
              TextField(
                controller: username,
                decoration: InputDecoration(hintText: 'username',
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.teal))
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                controller: password,
                decoration: InputDecoration(hintText: 'password',
                  border: OutlineInputBorder(borderSide: BorderSide(color: Colors.pink))
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: ()
              {
                  savetosharedpref();
                  Checklogin(context);

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
    if(username.text==password.text && username.text!='')
    {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ScreenTwo()));
       // print(username);
        print(username.text);
    }
    else{
      print('not');
    }
    }
    Future<void> savetosharedpref()async{
    final sharedpref=await SharedPreferences.getInstance();
     sharedpref.setString('key1', username.text);
     sharedpref.setString('key2', password.text);

    }

}
