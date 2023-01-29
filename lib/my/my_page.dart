import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body:Center(
        child: Container(
        child:Text("个人主页"),)
      )
    );
  }
}
