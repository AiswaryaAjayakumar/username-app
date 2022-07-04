
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:username/screens/register.dart';
import 'package:username/screens/studentslist.dart';
import 'package:username/screens/viewStud.dart';
class LogInScreen extends StatelessWidget {
  //const LogInScreen({Key? key}) : super(key: key);
  TextEditingController uname= TextEditingController();
  TextEditingController pass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(12),
        child: Column(
          children: [
            //   Text("Username"),
            SizedBox(height: 15,),
            TextField(
              controller: uname,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_box,
                    color: Colors.brown  ,
                    size: 25,
                  ),
                  labelText: "Username",
                  hintText: "Enter the Username",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            SizedBox(height: 15,),
            // Text("Password"),
            TextField(
              controller: pass,
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password,
                    color: Colors.brown,
                    size: 25,
                  ),
                  labelText: "Password",
                  hintText: "Enter the Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: double.infinity,

              child:      RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.deepOrange,
                onPressed: (){
                  var getUsername=uname.text;
                  var getPassword=pass.text;
                  print(getUsername);
                  print(getPassword);
                  //print("added");
                },
                child: Text("LOGIN",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: double.infinity,

              child:      RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.deepOrange,
                onPressed: (){
                  var getUsername=uname.text;
                  var getPassword=pass.text;
                  print(getUsername);
                  print(getPassword);
                  print("button clicked");
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                },
                child: Text("GO TO REGISTER",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            SizedBox(
              height: 50,
              width: double.infinity,

              child:      RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                ),
                color: Colors.deepOrange,
                onPressed: (){

                  print("button clicked");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudList()));
                },
                child: Text("STUDENTS LIST",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

