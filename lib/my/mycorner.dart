import 'package:flutter/material.dart';
import '../my/joined.dart';
import '../my/created.dart';

class mycorner extends StatefulWidget {
  const mycorner({Key? key}) : super(key: key);

  @override
  State<mycorner> createState() => _mycornerState();
}

class _mycornerState extends State<mycorner> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static final List<Widget> _pagesList = [
    const joined(),
    const created(),
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
      // 顶部导航栏
      appBar: AppBar(
        toolbarHeight: 100,
        leadingWidth: 5,
        backgroundColor: Color(0xfffff5e0),
        title: Container(
          height: 150,
          width: 400,
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Corner",
                  style: TextStyle(fontSize: 40, color: Colors.black,fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildIconButton(
                      0,
                      Text("Joined",
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xffef882b),
                              decoration: TextDecoration.underline)),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    _buildIconButton(
                      1,
                      Text(
                        "Created",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffef882b),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(width: 130),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIconButton(int index, Text text) {
    return TextButton(
      child: text,
      // style: TextStyle(
      //   fontSize: 20,
      //   color: _currentIndex == index ? Color(0xffef882b) : Color(0xff000000),
      // ),
      onPressed: () {
        setState(() {
          _currentIndex = index;
        });
      },
    );
  }
}
