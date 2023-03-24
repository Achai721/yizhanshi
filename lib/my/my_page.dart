import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/login.dart';
import 'package:myapp/main.dart';
import 'package:myapp/my/fankui.dart';
import 'package:myapp/my/mycomment.dart';
import 'package:myapp/my/mycorner.dart';
import 'package:myapp/my/myinformation.dart';

class Mypage extends StatelessWidget {
  const Mypage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('images/Rectangle_13.png'),
                      radius: 45,
                    ),
                  ],
                ),
              ),
            ),
            Stack(
              //小长方形
              children: [
                Container(
                  //小白色背景
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 20.0),
                  ),
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFEEEDED),
                          offset: Offset(8, 8),
                          blurRadius: 10,
                          spreadRadius: 1),
                    ],
                  ),
                ),
                Positioned(
                  //文字跳转
                  left: 60,
                  top: 10,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          //第一列文字
                          TextButton(
                            child: Text(
                              "3",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                            onPressed: () {
                              //导航到新路由
                              Navigator.of(context).pushNamed("/comment"
                              );
                            },
                          ),
                          Text(
                            "评论",
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xffd5d4d4)),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        children: [
                          //第一列文字
                          TextButton(
                            child: Text(
                              "3",
                              style:
                                  TextStyle(fontSize: 40, color: Colors.black),
                            ),
                            onPressed: () {
                              //导航到新路由
                              Navigator.of(context).pushNamed("/corner");
                            },
                          ),
                          Text(
                            "我的corner",
                            style: TextStyle(
                                fontSize: 16.0, color: Color(0xffd5d4d4)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Stack(
              //大长方形
              children: [
                Container(
                  child: Padding(
                    //白色背景
                    // padding: EdgeInsets.fromLTRB(30, 600, 20, 5),
                    padding: EdgeInsets.all(20),
                  ),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xFFD5D4D4),
                          offset: Offset(8, 8),
                          blurRadius: 10,
                          spreadRadius: 1),
                    ],
                  ),
                ),
                Positioned(
                  left: 44,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        //第一行：我的信息
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          TextButton(
                            child: Text(
                              "我的信息",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return myinformation();
                                }),
                              );
                            },
                          ),
                          SizedBox(width: 70),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                                size: 20, color: Colors.black),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return myinformation();
                                }),
                              );
                            },
                          ),
                        ],
                      ), //我的信息
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.assignment_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          TextButton(
                            child: Text(
                              "反馈",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return fankui();
                                }),
                              );
                            },
                          ),
                          SizedBox(width: 100),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                                size: 20, color: Colors.black),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return fankui();
                                }),
                              );
                            },
                          ),
                        ],
                      ), //反馈
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          TextButton(
                              child: Text(
                                "检查更新",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () async {
                                //导航到新路由
                                int a = await _show(context) as int;
                                print("已达到最新版本。");
                              }),
                          SizedBox(width: 70),
                          IconButton(
                              icon: Icon(Icons.arrow_forward_ios,
                                  size: 20, color: Colors.black),
                              onPressed: () async {
                                //底部弹窗
                                int a = await _show(context) as int;
                                print("已达到最新版本。");
                              }),
                        ],
                      ), //检查更新
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Icon(
                            Icons.logout_outlined,
                            color: Colors.black,
                            size: 20,
                          ),
                          TextButton(
                            child: Text(
                              "登出",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return LoginPage(title: "登录");
                                }),
                              );
                            },
                          ),
                          SizedBox(width: 100),
                          IconButton(
                            icon: Icon(Icons.arrow_forward_ios,
                                size: 20, color: Colors.black),
                            onPressed: () {
                              //导航到新路由
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) {
                                  return LoginPage(title: "登录");
                                }),
                              );
                            },
                          ),
                        ],
                      ), //登出
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Future<int?> _show(context) async {
  //底部弹窗
  //使用了一个异步
  var size = MediaQuery.of(context).size; //获取屏幕宽高和Widget大小
  return showModalBottomSheet(
    //showModalBottomSheet函数底部面板相当于一个新的页面
    backgroundColor: Colors.transparent,
    //颜色空白
    isDismissible: true,
    //能否点击消失
    isScrollControlled: true,
    //能否拖动消失
    context: context,
    //接受cotext
    builder: (context) {
      return Container(
        width: 100,
        height: 100, //使用屏幕宽高比设置大小
        decoration: BoxDecoration(
          color: Color(0xffeae8e8),
          borderRadius: BorderRadius.only(
            //圆角
            topLeft: Radius.circular(30), //左上角的圆角
            topRight: Radius.circular(30), //右上角的圆角
          ),
        ),
        child: Column(
          children: [
            Row(
              //如果想要设置一个返回的按钮可以这样写
              children: [
                IconButton(
                  icon: Icon(Icons.chevron_left_outlined),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Text(
              "已达到最新版本。",
              style: TextStyle(fontSize: 20, color: Color(0xff000000)),
            )
          ],
        ),
      );
    },
  );
}
