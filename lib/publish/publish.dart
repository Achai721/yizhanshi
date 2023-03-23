import 'dart:developer';

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
              // Row(children: [
              TextField(
                maxLines: 1,
                maxLength: 30,
                decoration: InputDecoration(
                  hintText: '添加标题',
                ),
              ),
              // ]), //标题
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
                            ? Color(0xffef882b) : Colors.black,
                      ),
                    ),
                  ), //集市
                  SizedBox(
                    width: 20,
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
                            ? Color(0xffef882b) : Colors.black,
                      ),
                    ),
                  ), //拼车
                  SizedBox(
                    width: 20,
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
                            ? Color(0xffef882b) : Colors.black,
                      ),
                    ),
                  ), //运动
                  SizedBox(
                    width: 20,
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
                            ? Color(0xffef882b) : Colors.black,
                      ),
                    ),
                  ), //学习
                  SizedBox(
                    width: 20,
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
                            ? Color(0xffef882b) : Colors.black,
                      ),
                    ),
                  ), //服务
                ],
              ), //标签
              TextField(
                maxLength: 1000,
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: '请添加正文',
                  border: InputBorder.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
