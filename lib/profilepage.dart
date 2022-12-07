import 'dart:html';

import 'package:flutter/material.dart';
import 'package:tugas_openclass2/profile/profilecontent.dart';
import 'package:tugas_openclass2/profile/profilehead.dart';

class ProfilePage extends StatelessWidget{
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Column(
        children: [
          ProfileHead(),
          ProfileContent()
        ],
        ),
    );
  }
}