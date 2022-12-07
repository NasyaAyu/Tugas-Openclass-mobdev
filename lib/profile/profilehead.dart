import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas_openclass2/profile/profilecontent.dart';

class ProfileHead extends StatelessWidget{
  const ProfileHead({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child : Center(
        child : Column(
          children: [
            Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                SizedBox(height: 15,),
                Text(
                  "Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 10,),
                CircleAvatar(
                  radius:120,
                  backgroundColor: Colors.transparent,
                  child: SizedBox(
                    width: 500,
                    height:500,
                    child: ClipOval(child: Image.asset("hanako.png")),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Nasya",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "NPM 2206025426",
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                )
              ]
              ),
            width: 500,
            height: 450,
            decoration: BoxDecoration(
              color: Color(0xFF5038BC),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.0)),
            ),
            ),
          ]
        )
      ),
    );
  }
}