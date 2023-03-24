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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
                SizedBox(width: 105),
                Text("注册",
                    style: TextStyle(color: Colors.black, fontSize: 30.0)),
              ],
            ),
          ),
          Image(image: AssetImage('images/white.png'), width: 104, height: 104),
          Positioned(
              top: 200,
              left: 13,
              child: Stack(children: <Widget>[
                SizedBox(
                  width: 403,
                  height: 350,
                  child: Image(
                      image: AssetImage('images/bigwhite.png'),
                      width: 403,
                      height: 350),
                ), //头像框
                Positioned(
                    top: 40,
                    left: 26,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 350,
                            height: 65,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "   请输入用户名（8-20位）",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    borderSide:
                                        BorderSide(color: Color(0xffef882b))),
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 65,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "   请输入密码（8-20位）",
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    borderSide:
                                        BorderSide(color: Color(0xffef882b))),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 43,
                          ),
                          OutlineButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("/login");
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(500)),
                              borderSide: BorderSide(
                                color: Color(0xffef882b),
                                width: 5.0,
                              ),
                              child: const Text(
                                '→',
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Color(0xffef882b),
                                ),
                              ) //Text
                              )
                        ])) //大白框
              ])),
        ],
      )),
    );
  }
}
