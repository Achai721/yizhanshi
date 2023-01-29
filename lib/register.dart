import 'package:flutter/material.dart';
import '../login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffff5e0),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text("注册", style: TextStyle(color: Colors.black, fontSize: 30.0)),
            Image(
                image: AssetImage('images/white.png'), width: 104, height: 104),
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 403,
                  height: 375,
                  child: Image(
                      image: AssetImage('images/bigwhite.png'),
                      width: 403,
                      height: 375),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "   请输入用户名（8-20位）",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Color(0xffef882b))),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "   请输入密码（8-20位）",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Color(0xffef882b))),
                    ),
                  ),
                  OutlineButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/login");
                      },
                      color: Color(0xffef882b),
                      child: Text(
                        '→',
                        style:
                            TextStyle(fontSize: 50, color: Color(0xffef882b)),
                      ))
                ])
              ],
            )
          ],
        )));
  }
}
