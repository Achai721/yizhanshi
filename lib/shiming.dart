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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Positioned(
              top: 70.0,
              left: 50.0,
              child: Text(
                "实名认证",
                style: TextStyle(color: Color(0xffACA6A6), fontSize: 20.0),
              ),
            ),
            Image(
                image: AssetImage("images/Rectangle_99.png"),
                width: 20,
                height: 20),
            Positioned(
              child: SizedBox(
                  width: 385.0,
                  height: 327.0,
                  child: Stack(
                    children: <Widget>[
                      Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(39.0),
                        ),
                      ),
                      Positioned(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        fontSize: 24.0, color: Colors.black)),
                                TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
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
                            Divider(
                                height: 1.0,
                                indent: 60.0,
                                color: Color(0xffACA6A6)),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        fontSize: 24.0, color: Colors.black)),
                                TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Image(
                                  image: AssetImage(
                                    'images/zhuanye.png',
                                  ),
                                  width: 29.0,
                                  height: 29.0,
                                ),
                                new Text("专业",
                                    style: TextStyle(
                                        fontSize: 24.0, color: Colors.black)),
                                TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                        fontSize: 24.0, color: Colors.black)),
                                TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
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
              child:SizedBox(
                height: 221,
              width: 56,
              child:RaisedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/home");
                    },
                    padding: EdgeInsets.all(0.0),
                    child: Text("注册"),
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
