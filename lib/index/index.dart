import 'package:flutter/material.dart';
import '../home/home_page.dart';
import '../market/market_page.dart';
import '../chat/chat_page.dart';
import '../my/my_page.dart';


class Index extends StatefulWidget {
  const Index({Key? key}) : super(key: key);

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _currentindex = 0;

  void _onTap(int index){
    setState(() {
      _currentindex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xfffff5e0),
      body: IndexedStack(
        index:0,
        children: <Widget>[
          HomePage(),
          Market(),
          ChatApp(),
          Mypage()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        onTap: _onTap,
        type: BottomNavigationBarType.fixed,
        fixedColor: Color(0xffef882b),
        items: [BottomNavigationBarItem(icon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_circle_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.chat_outlined)),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline)),
        ],
      ),
    );
  }
}
