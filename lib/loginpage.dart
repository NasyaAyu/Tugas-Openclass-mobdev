import 'dart:html';

import 'package:flutter/material.dart';
import 'profilepage.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  TextEditingController unameController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : Center(
        child : Column(
          children: [
            Container(
            padding: EdgeInsets.all(10),
            width: 500,
            height: 560,
            decoration: BoxDecoration(
              color: Color(0xFF5038BC),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0))
            ),
            child: Column(
              children: [
                SizedBox(height:80),
                Text(
                  "Ristek",
                  style: TextStyle(
                    fontSize: 130,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height:80),
                Align(
                  alignment: Alignment(-0.9, 1),
                  child : Text(
                    "USERNAME",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                SizedBox(height: 10),
                Container(
                  width: 450,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.only(top:10, left: 5),
                  child:TextFormField(
                    controller: unameController,
                    cursorWidth: 5,
                    cursorHeight: 30,
                    cursorColor: Color(0xFF5038BC),
                    style: TextStyle(color: Color(0xFF5038BC), fontSize: 20 ),
                    decoration: InputDecoration.collapsed(
                      hintText: ""
                    ),
                  )
                ),
                SizedBox(height:20),
                Align(
                  alignment: Alignment(-0.9, 1),
                  child : Text(
                    "PASSWORD",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      letterSpacing: 1.5,
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ),
                SizedBox(height: 10),
                Container(
                  width: 450,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.only(top:10, left: 5),
                  child:TextFormField(
                    controller: pwController,
                    obscureText: true ,
                    cursorWidth: 5,
                    cursorHeight: 30,
                    cursorColor: Color(0xFF5038BC),
                    style: TextStyle(color: Color(0xFF5038BC), fontSize: 20 ),
                    decoration: InputDecoration.collapsed(
                      hintText: ""
                    ),
                  )
                )
              ]
            ),
          ),
          SizedBox(height: 50,),
          SizedBox(
            child: ElevatedButton(
              child: Text(
                "LOGIN",
                textAlign: TextAlign.center,
                style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                ),
              ),
              style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: Color(0xFF5038BC),
              padding: EdgeInsets.only(top: 20, bottom: 20, left: 100, right: 100)
              ),
              onPressed: () {
                if (unameController.text == "pacil" && pwController.text == "12345"){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return ProfilePage();
                      }
                    )
                  );
                } else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Container(
                        height: 50,
                        padding: EdgeInsets.only(top:15, left:30, right:90),
                        child: Text(
                          "Wrong Username/Password :(",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFF5038BC).withOpacity(0.8),
                          borderRadius: BorderRadius.all(Radius.circular(50))
                        ),
                      ),
                      behavior: SnackBarBehavior.floating,
                      duration: Duration(seconds:1),
                      backgroundColor: Colors.transparent,
                      elevation: 0,
                      )
                  );
                };
              },
            ),
          ),
          ]  
        ),
      ),
    );
  }
}