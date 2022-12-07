import 'dart:html';

import 'package:flutter/material.dart';

class ProfileContent extends StatelessWidget{
  const ProfileContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30,),
        Row(
          children: [
            SizedBox(height: 80),
            Expanded(
              flex: 1,
              child:Container(
                color: Color(0xFF5038BC),
                height:50,
                width: 5,
                ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Bio",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                )
              ),
              color:Color(0xFFFFD668),
              height:50,
              width: 490,
            )
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 5, left: 15, right: 5),
          child : Text(
            "Lorem ipsum dolor sit amet\nMaaf lagi gaada ide banget",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 1.4,
              letterSpacing: 1,
            ),
          )
        ),
        SizedBox(height: 15,),
        Row(
          children: [
            SizedBox(height: 80),
            Expanded(
              flex: 1,
              child:Container(
                color: Color(0xFF5038BC),
                height:50,
                width: 5,
                ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Motivasi",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                )
              ),
              color:Color(0xFFFFD668),
              height:50,
              width: 490,
            )
          ],
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 5, left: 15, right: 5),
          child : Text(
            "Motivasi saya adalah karena saya ingin\ncepat kerja atau freelance app development",
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              height: 1.4,
              letterSpacing: 1,
            ),
          )
        ),
      ]
    );
  }
}