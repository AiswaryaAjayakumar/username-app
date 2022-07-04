import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:username/screens/login.dart';
import 'package:username/screens/register.dart';
import 'package:username/screens/studentslist.dart';
import 'package:username/screens/viewStud.dart';

void main()
{
  runApp(User());
}
class User extends StatelessWidget {
 //const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Center(child: Text("User App",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ),
          )),
        ),
        body: LogInScreen(),
      ),
    );
  }
}


