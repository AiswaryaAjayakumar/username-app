
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:username/main.dart';
import 'package:username/screens/viewStud.dart';

class Register extends StatelessWidget {
  //const ({Key? key}) : super(key: key);
 TextEditingController uname = TextEditingController();
 TextEditingController uadd = TextEditingController();
 TextEditingController umob = TextEditingController();
 TextEditingController uclg = TextEditingController();
 TextEditingController umail = TextEditingController();
 TextEditingController uusr = TextEditingController();
 TextEditingController upswd = TextEditingController();
 TextEditingController ucpswrd = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Register Page"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(25),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextField(
                  controller: uname,
                  decoration: InputDecoration(
                      labelText: "Name",
                      hintText: "Enter you name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: uadd,
                  decoration: InputDecoration(
                      labelText: "Address",
                      hintText: "Enter you address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: umob,
                  decoration: InputDecoration(
                      labelText: "Mobile number",
                      hintText: "Enter you mobile number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: uclg,
                  decoration: InputDecoration(
                      labelText: "College",
                      hintText: "Enter you college name",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: umail,
                  decoration: InputDecoration(
                      labelText: "Email id",
                      hintText: "Enter you mail id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: uusr,
                  decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Enter you username",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  controller: upswd,
                  decoration: InputDecoration(
                    helperText: "must contain uppercase and lowercase letters ",
                      labelText: "Password",
                      hintText: "Enter you password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  obscureText: true,
                  controller: ucpswrd,
                  decoration: InputDecoration(
                    helperText: "re-enter your password",
                      labelText: "Confirm password",
                      hintText: "Enter you confirm password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(height: 55,
                    width: double.infinity,
                    child:   RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){
                        var getUname = uname.text;
                        var getUadd = uadd.text;
                        var getUmob = umob.text;
                        var getUclg = uclg.text;
                        var getUid = umail.text;
                        var getUusr = uusr.text;
                        var getUpswd = upswd.text;
                        var getUcpswd = ucpswrd.text;
                        print(getUname);
                        print(getUadd);
                        print(getUmob);
                        print(getUclg);
                        print(getUid);
                        print(getUusr);
                        print(getUpswd);
                        print(getUcpswd);



                        //  print("Button clicked");
                      },
                      child: Text("REGISTER",
                        style: TextStyle(
                            color: Colors.white,fontSize: 35
                        ),
                      ),
                    )
                ),
                SizedBox(height: 10,),
                SizedBox(height: 55,
                    width: double.infinity,
                    child:   RaisedButton(
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>User()));
                        print("Button clicked");
                      },
                      child: Text("GO TO LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 35
                        ),
                      ),
                    )
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
