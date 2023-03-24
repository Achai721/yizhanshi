import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';

class publish extends StatefulWidget {
  const publish({Key? key}) : super(key: key);

  @override
  State<publish> createState() => _publishState();
}

class _publishState extends State<publish> {
  int _selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Container(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 40, 15, 20),
          child: Column(
            //总排版
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      )),
                  SizedBox(
                    width: 210,
                  ),
                  Positioned(
                      right: 13,
                      left: 354,
                      child: RaisedButton.icon(
                        onPressed: () {
                          print("发布成功！");
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.publish),
                        color: Color(0xffef882b),
                        textColor: Colors.black,
                        label: Text("发布", style: TextStyle(fontSize: 27)),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      )),
                ],
              ), //第一行
              TextField(
                maxLines: 1,
                maxLength: 30,
                decoration: InputDecoration(
                  hintText: '添加标题',
                ),
              ), //标题
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = 0;
                      });
                    },
                    child: Text(
                      '集市',
                      style: TextStyle(
                        color: _selectIndex == 0
                            ? Color(0xffef882b)
                            : Colors.black,
                      ),
                    ),
                  ), //集市
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = 1;
                      });
                    },
                    child: Text(
                      '拼车',
                      style: TextStyle(
                        color: _selectIndex == 1
                            ? Color(0xffef882b)
                            : Colors.black,
                      ),
                    ),
                  ), //拼车
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = 2;
                      });
                    },
                    child: Text(
                      '运动',
                      style: TextStyle(
                        color: _selectIndex == 2
                            ? Color(0xffef882b)
                            : Colors.black,
                      ),
                    ),
                  ), //运动
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = 3;
                      });
                    },
                    child: Text(
                      '学习',
                      style: TextStyle(
                        color: _selectIndex == 3
                            ? Color(0xffef882b)
                            : Colors.black,
                      ),
                    ),
                  ), //学习
                  SizedBox(
                    width: 18,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _selectIndex = 4;
                      });
                    },
                    child: Text(
                      '服务',
                      style: TextStyle(
                        color: _selectIndex == 4
                            ? Color(0xffef882b)
                            : Colors.black,
                      ),
                    ),
                  ), //服务
                ],
              ), //标签
              TextField(
                maxLength: 1000,
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: '请添加正文',
                  border: InputBorder.none,
                ),
              ), //输入正文
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    //地点
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      TextButton(
                          child: Text(
                            "地点",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          onPressed: () {}),
                      SizedBox(width: 235),
                      // IconButton(
                      //     icon: Icon(Icons.arrow_forward_ios,
                      //         size: 18, color: Colors.black),
                      //     onPressed: () {
                      //     }),
                      PopupMenuButton(
                        color: Color(0xffFFFAEF),
                        child: Icon(Icons.arrow_forward_ios,size: 18, color: Colors.black),
                        itemBuilder: (BuildContext context) {
                          return <PopupMenuItem<String>>[
                            PopupMenuItem(
                                child: Text(
                              "双校区",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )),
                            PopupMenuItem(
                                child: Text(
                                  "北洋园",
                                  style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                                )),
                            PopupMenuItem(
                                child: Text(
                                  "卫津路",
                                  style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                                )),
                          ];
                        },
                      ),
                    ],
                  ), //地点
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.black,
                        size: 18,
                      ),
                      TextButton(
                        child: Text(
                          "时间",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        onPressed: () {
                          //导航到新路由
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) {
                          //     return fankui();
                          //   }),
                          // );
                        },
                      ),
                      SizedBox(width: 220),
                      IconButton(
                        icon: Icon(Icons.arrow_forward_ios,
                            size: 18, color: Colors.black),
                        onPressed: () {
                          //导航到新路由
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) {
                          //     return fankui();
                          //   }),
                          // );
                        },
                      ),
                    ],
                  ), //时间
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.people_outline,
                        color: Colors.black,
                        size: 18,
                      ),
                      TextButton(
                        child: Text(
                          "人数（选填）",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        onPressed: () {},
                        // async {
                        //   //导航到新路由
                        //   int a = await _show(context) as int;
                        //   print("已达到最新版本。");
                        // }
                      ),
                      SizedBox(width: 50),
                      Container(
                        width: 161,
                        height: 21,
                        child: TextField(
                          maxLines: 1,
                          decoration: InputDecoration(
                            hintText: "已参与人数/目标人数",
                          ),
                        ),
                      ),
                    ],
                  ), //人数
                ],
              ),
              TextField(
                maxLines: 3,
                decoration: InputDecoration(
                    hintText: "#试着添加话题吧", border: InputBorder.none),
              ) //下面三行
            ],
          ),
        ),
      ),
    );
  }
}
