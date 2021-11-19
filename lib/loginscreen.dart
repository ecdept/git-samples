import 'package:flutter/material.dart';
import 'package:git_samples/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'main.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

   final username=TextEditingController();

   final password=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextFormField(
                    validator:(value){
                      if(value==null || value.isEmpty)
                        {
                          return 'Please enter Username';
                        }
                    } ,
                    controller:username ,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(),
                      enabledBorder:OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan))
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    validator: (value){
                      if(value==null ||value.isEmpty)
                        return 'Please enter Password';
                    },
                    controller: password,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Password'),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      checkLogin(context);

                    }
                  },
                    child: Text('Log in')),
                ],
              ),
            )),
      ),
    );
  }

  void checkLogin(BuildContext context)async
  {
    if (username.text==password.text){
       final sharedPref=await SharedPreferences.getInstance();
      await sharedPref.setBool(key, true);
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (ctx)=>HomeScreen()));
      print('correct');
    }
    else{
      final sharedPref=await SharedPreferences.getInstance();
      await sharedPref.setBool(key, false);

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username Password Mismatch'),));


    }
  }
}
