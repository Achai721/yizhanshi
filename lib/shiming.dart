import 'package:flutter/material.dart';

class Shiming extends StatefulWidget {
  const Shiming({Key? key}) : super(key: key);

  @override
  State<Shiming> createState() => _ShimingState();
}

class _ShimingState extends State<Shiming> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: 800,
          height: 800,
          color: Color(0xfffff5e0),
        ),
        Column(
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
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(39.0),
                  ),
                ),
              ),
              top: 294.0,
              left: 28.0,
            ),
            Positioned(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          'images/xuehao.png',
                        ),
                        width: 29.0,
                        height: 29.0,
                      ),
                      new Text("学号",
                          style:
                              TextStyle(fontSize: 24.0, color: Colors.black)),
                      TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      Image(
                        image: AssetImage(
                          'images/typing.png',
                        ),
                        width: 18.5,
                        height: 18.5,
                      ),
                    ],
                  ),
                  Divider(height: 1.0, indent: 60.0, color: Color(0xffACA6A6)),
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
                          style:
                              TextStyle(fontSize: 24.0, color: Colors.black)),
                      TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      Image(
                        image: AssetImage(
                          'images/typing.png',
                        ),
                        width: 18.5,
                        height: 18.5,
                      ),
                    ],
                  ),
                  Divider(height: 1.0, indent: 60.0, color: Color(0xffACA6A6)),
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
                          style:
                              TextStyle(fontSize: 24.0, color: Colors.black)),
                      TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      Image(
                        image: AssetImage(
                          'images/typing.png',
                        ),
                        width: 18.5,
                        height: 18.5,
                      ),
                    ],
                  ),
                  Divider(height: 1.0, indent: 60.0, color: Color(0xffACA6A6)),
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
                          style:
                              TextStyle(fontSize: 24.0, color: Colors.black)),
                      TextField(
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                      Image(
                        image: AssetImage(
                          'images/typing.png',
                        ),
                        width: 18.5,
                        height: 18.5,
                      ),
                    ],
                  ),
                ],
              ),
              top: 327,
              left: 84, //那四行字
            ),
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                    child: Text("注册"),
                    shape: StadiumBorder(),
                    color: Color(0xffef882b),
                  ),
                ],
              ),
              bottom: 190,
            ),
          ],
        ),
      ],
    );
  }
}
