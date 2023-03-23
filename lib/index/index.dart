import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/publish/publish.dart';
import '../home/home_page.dart';
import '../market/market_page.dart';
import '../chat/chat_page.dart';
import '../my/my_page.dart';
import '../publish/publish.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static final List<Widget> _pagesList = [
    const HomePage(),
    const Market(),
    ChatApp(),
    // publish(),
    const Mypage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   title: Text(_titles[_currentIndex]),
      // ),
      body: IndexedStack(
        index: _currentIndex,
        children: _pagesList,
      ),
      // 底部凸起凹陷导航栏
      bottomNavigationBar: BottomAppBar(
        color: Color(0xffef882b),
        shape: const CircularNotchedRectangle(), //凹陷
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            _buildIconButton(0, Icon(Icons.home, size: 24),),
            _buildIconButton(1, Icon(Icons.cloud, size: 24)),
            SizedBox(
              width: 50,
            ),
            _buildIconButton(2, Icon(Icons.question_answer, size: 24)),
            _buildIconButton(3, Icon(Icons.person, size: 24)),
          ],
        ),
      ),

      ///中间图片凸起
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/publish");
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [Icon(Icons.add)]),
        backgroundColor: (Color(0xffef882b)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildIconButton(int index, Icon icon) {
    return IconButton(
      icon: icon,
      color: _currentIndex == index ? Colors.black :  Color(0xfffff5e0),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}

