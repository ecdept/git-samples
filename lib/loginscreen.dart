import 'package:flutter/material.dart';

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
                    _formKey.currentState!.validate();
                    checkLogin(context);
                  }, child: Text('Log in'))
                ],
              ),
            )),
      ),
    );
  }

  void checkLogin(BuildContext context)
  {
    if (username==password){

    }
    else{

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Username Password Mismatch'),));
           print('error');

    }
  }
}
