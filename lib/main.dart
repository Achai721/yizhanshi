import 'package:flutter/material.dart';
import 'package:myapp/chat/chat_page.dart';
import 'package:myapp/chat/chatapply.dart';
import 'package:myapp/chat/chatnews.dart';
import 'package:myapp/chat/search.dart';
import 'package:myapp/home/home_page.dart';
import 'package:myapp/index/index.dart';
import 'package:myapp/login.dart';
import 'package:myapp/my/fankui.dart';
import 'package:myapp/my/mycorner.dart';
import 'package:myapp/publish/publish.dart';
import 'package:myapp/register.dart';
import 'package:myapp/shiming.dart';
import 'package:myapp/splashpage.dart';
import 'package:myapp/my/mycomment.dart';
import '../my/myinformation.dart';
import '../chat/search.dart';

class MyColors {
  static const Color color_ff90caf9 = Color(0xffef882b);
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 不显示右上角的 debug
        title: '一站式服务平台',
        theme: ThemeData(
          primaryColor: Color(0xffef882b),
          buttonTheme: ButtonThemeData(
              buttonColor: Color(0xffef882b),
            disabledColor: Color(0xffef882b),
          )
        ),
        // 注册路由表
        routes: {
          "/": (context) =>   SplashPage(),
          "/login": (context) =>  const LoginPage(title: "登录",),
          "/home": (context) =>  const HomePage(),// 首页路由
          "/register": (context) =>  const Register(),//注册
          "/shiming": (context) =>  const Shiming(),//实名认证
          "/chat": (context) => ChatApp(),//聊天
          "/index": (context) => MainPage(),
          "/comment":(context)=>mycomment(),
          "/mycorner":(context)=>mycorner(),
          "/information":(context)=>myinformation(),
          "/fankui": (context) => fankui(),
          "/news":(context)=>news(),
          "/apply":(context)=>apply(),
          "/publish":(context)=>publish(),
          "/search":(context)=>search(),
          //记得页面在这里写路由
        });
  }
}


