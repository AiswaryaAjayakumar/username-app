

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:username/main.dart';

class StudList extends StatefulWidget {
  const StudList({Key? key}) : super(key: key);

  @override
  State<StudList> createState() => _StudListState();
}

class _StudListState extends State<StudList> {
  List studname=[];
  List studroll=[];
  TextEditingController sname=TextEditingController();
  TextEditingController sroll=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("STUDENTS LIST",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30
          ),
          ),
        ),
        
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(30),
            child: Column(
              children: [
                TextField(
                  controller: sname,
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                    )
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  controller: sroll,
                  decoration: InputDecoration(
                    labelText: "Enter your roll number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                ),
                SizedBox(height: 15,),
                SizedBox(height: 55,
                width: double.infinity,
                child: RaisedButton(
                  color: Colors.blueAccent,

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  onPressed: (){
                  var getSname=sname.text;
                  var getSroll=sroll.text;

                  setState(() {
                 studname.add(getSname);
                 studroll.add(getSroll);
                  });
                },
                child: Text("ADD",
                
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35
                ),
                ),
                ),
                ),
                SizedBox(height: 15,),
                SizedBox(height: 55,
                  width: double.infinity,
                  child: RaisedButton(
                    color: Colors.blueAccent,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>User()));
                    },
                    child: Text("BACK TO LOGIN",

                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35
                      ),
                    ),
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                    itemCount: studname.length==null ? 0 : studname.length,
                    itemBuilder: (context,index){
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.account_circle,
                          color: Colors.brown,
                            size: 30,
                          ),
                          trailing: GestureDetector(
                            onTap: (){
                              print("delete clicked"+index.toString());
                              setState(() {
                                studname.removeAt(index);
                                studroll.removeAt(index);
                              });
                            },
                              child: Icon(Icons.delete_forever,
                              color: Colors.brown,
                                size: 30
                                ,
                              )),
                          title: Text(studname[index]),
                          subtitle: Text( "Roll no : " + studroll[index].toString()),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),


      ),
    );
  }
}
