import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../main.dart';
import 'package:flutter/cupertino.dart';

class Shiming extends StatefulWidget {
  const Shiming({Key? key}) : super(key: key);

  @override
  State<Shiming> createState() => _ShimingState();
}

class _ShimingState extends State<Shiming> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Positioned(
              top: 70.0,
              left: 50.0,
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 30,
                      )),
                  SizedBox(width: 95,),
                  Text(
                    "实名认证",
                    style: TextStyle(color: Color(0xffACA6A6), fontSize: 30.0),
                  ),
                ],
              ),
            ),
            Image(
                image: AssetImage("images/Rectangle_99.png"),
                width: 50,
                height: 50),
            Positioned(
              child: SizedBox(
                  width: 385.0,
                  height: 327.0,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 385,
                        height: 327,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      Positioned(
                        right: 20,bottom: 42,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'images/xuehao.png',
                                  ),
                                  width: 29.0,
                                  height: 29.0,
                                ),
                                new Text("学号",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                                Container(
                                  width: 200,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/typing.png',
                                  ),
                                  width: 18.5,
                                  height: 18.5,
                                ),
                              ],
                            ), //学号
                            // SizedBox(height: 30,),
                            Divider(
                                height: 1.0,
                                indent: 60.0,
                                color: Color(0xffACA6A6)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'images/name.png',
                                  ),
                                  width: 29.0,
                                  height: 29.0,
                                ),
                                new Text("姓名",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                                Container(
                                  width: 200,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/typing.png',
                                  ),
                                  width: 18.5,
                                  height: 18.5,
                                ),
                              ],
                            ), //姓名
                            Divider(
                                height: 1.0,
                                indent: 60.0,
                                color: Color(0xffACA6A6)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.account_balance_outlined,
                                  size: 29,
                                ),
                                new Text("专业",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                                Container(
                                  width: 200,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/typing.png',
                                  ),
                                  width: 18.5,
                                  height: 18.5,
                                ),
                              ],
                            ), //专业
                            Divider(
                                height: 1.0,
                                indent: 60.0,
                                color: Color(0xffACA6A6)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'images/phone.png',
                                  ),
                                  width: 29.0,
                                  height: 29.0,
                                ),
                                new Text("电话",
                                    style: TextStyle(
                                        fontSize: 20.0, color: Colors.black)),
                                Container(
                                  width: 200,
                                  height: 30,
                                  child: TextField(
                                    decoration: InputDecoration(),
                                  ),
                                ),
                                Image(
                                  image: AssetImage(
                                    'images/typing.png',
                                  ),
                                  width: 18.5,
                                  height: 18.5,
                                ),
                              ],
                            ), //电话
                          ],
                        ),
                        top: 33,
                        left: 10, //那四行字
                      ),
                    ],
                  )),
              top: 294,
              left: 25,
            ),
            Positioned(
              child: SizedBox(
                height: 55,
                width: 150,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/index");
                  },
                  padding: EdgeInsets.all(0.0),
                  child: Text("注册",style: TextStyle(fontSize: 24),),
                  shape: StadiumBorder(),
                  color: Color(0xffef882b),
                ),
              ),
              bottom: 190,
            ),
          ],
        ),
      ),
    );
  }
}
