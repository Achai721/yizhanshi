import 'package:flutter/material.dart';

class myinformation extends StatefulWidget {
  const myinformation({Key? key}) : super(key: key);

  @override
  State<myinformation> createState() => _myinformationState();
}

class _myinformationState extends State<myinformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                    ))
              ],
            ),//返回
            Row(
              children: [
                Container(
                  width: 270,
                  height: 150,
                  child: Text(
                    "Information    "
                    "Hello,     "
                    "QiaoGuqian",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 40),
                  ),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/Rectangle_13.png'),
                  radius: 45,
                ),
              ],
            ),//第一行
            Container(//大白框
              width: 600,
              height: 470,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.person_outline),
                      new Text("昵称",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black,)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
                  ), //昵称
                  // SizedBox(height: 30,),
                  Divider(
                      height: 1.0,
                      indent: 60.0,
                      color: Color(0xffACA6A6)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(Icons.people_outline_outlined),
                      new Text("性别",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
                  ), //性别
                  Divider(
                      height: 1.0,
                      indent: 60.0,
                      color: Color(0xffACA6A6)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Icon(
                        Icons.voicemail_sharp,
                        size: 25,
                      ),
                      new Text("个性签名",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 160,
                        height: 30,
                        child: TextField(
                          maxLength: 30,
                          maxLines: 1,
                          decoration: InputDecoration(border: InputBorder.none),
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
                  ), //个性签名
                  Divider(
                      height: 1.0,
                      indent: 60.0,
                      color: Color(0xffACA6A6)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(width: 15,),
                      Icon(Icons.star_border_purple500,size: 27,),
                      SizedBox(width: 10,),
                      new Text("信誉等级",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 190,
                        height: 30,
                      ),
                      Text("Lv1",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w400),)
                    ],
                  ),//信誉等级
                  Divider(height: 20.0,indent: 0,color: Color(0xffEFEFEF),),
                  Text("实名认证",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color(
                      0xffACA6A6)),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          'images/xuehao.png',
                        ),
                        width: 26.0,
                        height: 26.0,
                      ),
                      new Text("学号",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
                        width: 26.0,
                        height: 26.0,
                      ),
                      new Text("姓名",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none),
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
                        size: 26,
                      ),
                      new Text("专业",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
                        width: 24.0,
                        height: 24.0,
                      ),
                      new Text("电话",
                          style: TextStyle(
                              fontSize: 20.0, color: Colors.black)),
                      Container(
                        width: 200,
                        height: 30,
                        child: TextField(
                          decoration: InputDecoration(border: InputBorder.none),
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
              ),//第一个四行

            ),
          ],
        ),
      ),
    );
  }
}
