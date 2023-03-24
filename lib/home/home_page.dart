import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Color(0xff00000),
      // ),
      home: Scaffold(
        backgroundColor: Color(0xfffff5e0), // 背景色为淡黄色
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 30, // 三行文字距离顶部的距离
                left: 35, // 三行文字距离左侧的距离
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      ' Special', // 第一行文字
                      style: TextStyle(
                        fontSize: 35, // 字体大小
                        fontWeight: FontWeight.normal, // 字体不加粗
                        color: Colors.black, // 字体颜色为黑色
                      ),
                    ),
                    SizedBox(height: 6), // 两行文字之间的间距
                    Text(
                      'Cornors', // 第二行文字
                      style: TextStyle(
                        fontSize: 38, // 字体大小
                        fontWeight: FontWeight.bold, // 字体加粗
                        color: Colors.black, // 字体颜色为黑色
                      ),
                    ),
                    SizedBox(height: 6), // 两行文字之间的间距
                    Text(
                      ' For you', // 第三行文字
                      style: TextStyle(
                        fontSize: 40, // 字体大小
                        fontWeight: FontWeight.bold, // 字体加粗
                        color: Colors.black, // 字体颜色为黑色
                      ),
                    ),
                  ],
                ),
              ),
              const Positioned(
                top: 50, // 用户头像距离顶部的距离
                right: 60, // 用户头像距离右侧的距离
                child: CircleAvatar(
                  radius: 45, // 用户头像的半径
                  backgroundImage: AssetImage('images/Rectangle_13.png'), // 用户头像的图片
                ),
              ),
              Positioned(
                bottom: 40, // 轮播图距离底部的距离
                left: 20, // 轮播图距离左侧的距离
                right: 20, // 轮播图距离右侧的距离
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),),
                  height: 410,width: 200,
                  // 轮播图的高度
                  child: PageView(
                    children: [
                      Image.asset('images/lunbo.png', fit: BoxFit.fitHeight), // 第一张轮播图
                      Image.asset('images/lunbo.png', fit: BoxFit.fitHeight), // 第二张轮播图
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
