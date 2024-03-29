import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../chat/chatnews.dart';
import '../chat/chatapply.dart';
import 'package:flutter/cupertino.dart';
import '../chat/search.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static final List<Widget> _pagesList = [
    const news(),
    const apply(),
    const search(),
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
            padding: EdgeInsets.fromLTRB(0, 40, 10, 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Message",
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _buildIconButton(
                      0,
                      Text("News",
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
                        "Apply",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffef882b),
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(width: 130),
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed("/search");
                        },
                        icon: Icon(
                          Icons.search_outlined,
                          size: 25,
                          color: Colors.black,
                        ))
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

//       body: Container(
//           child: Padding(
//             padding: EdgeInsets.fromLTRB(20, 50, 20, 30),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "Message",
//                   style: TextStyle(fontSize: 40, color: Colors.black),
//                 ),
//                 _buildIconButton(
//                   0, Text("News", style: TextStyle(fontSize: 20)),
//                 ),
//               ],
//             ),
//           )),
//     );
//   }
// }
//
// Widget _buildIconButton(int index, Text text) {
//   return TextButton(
//     child: Text(
//         "News",
//         style: TextStyle(
//           color: _currentIndex == index ? Colors.black : Color(0xffef882b),)
//     ),
//     onPressed: () {
//       setState(() {
//         _currentIndex = index;
//       });
//     },
//   );
// }}
// import 'package:flutter/material.dart';
//
// class ChatApp extends StatefulWidget {
//   @override
//   _ChatAppState createState() => _ChatAppState();
// }
//
// class _ChatAppState extends State<ChatApp> {
//   //for the rest of the tutorial I'll need to import a set of images' Url for the avatar
//   //this is my images list
//   List<String> _avatarUrl = [
//     'images/Rectangle_13.png',
//     'images/Rectangle_13(1).png',
//     'images/Rectangle_13(2).png',
//     'images/Rectangle_13(3).png',
//     'images/Rectangle_13(4).png',
//     'images/Rectangle_13(5).png',
//   ];
//
//   //Avatar widget
//   Widget avatarWidget(String urlImg, double radius) {
//     return Container(
//       width: radius,
//       height: radius,
//       decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             alignment: Alignment.topCenter,
//             image: AssetImage(urlImg),
//           )),
//     );
//   }
//   /// 构建子部件
//   Widget _buildChildWidget() {
//     return Container(
//       constraints: BoxConstraints.expand(),
//       // color: Style.pBackgroundColor,
//       child: Stack(
//         overflow: Overflow.visible,
//         // 注意层叠顺序，她不像 Web 中有 z-index 的概念
//         children: <Widget>[
//           // 导航栏
//           // 内容页
//           // 三个点部件
//           // 小程序
//           // 菜单
//         ],
//       ),
//     );
//   }
//
//   //StoryButton widget
//   Widget storyButton(String urlImg, double radius) {
//     return InkWell(
//       onTap: () {},
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 8.0),
//         child: Container(
//           width: radius,
//           height: radius,
//           decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               image: DecorationImage(
//                 fit: BoxFit.cover,
//                 alignment: Alignment.topCenter,
//                 image: NetworkImage(urlImg),
//               )),
//         ),
//       ),
//     );
//   }
//
//   //List items widget
//   Widget listItem(
//       String urlImg, String userName, String, message, String hour) {
//     return InkWell(
//       onTap: () {},
//       child: Padding(
//         padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
//         child: Container(
//           child: Row(
//             children: [
//               avatarWidget(urlImg, 60.0),
//               SizedBox(
//                 width: 10.0,
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       userName,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       message,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                         fontWeight: FontWeight.w300,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Text(
//                 hour,
//                 style: TextStyle(
//                   color: Colors.grey[50],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xfffff5e0),
//       body: Container(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 35.0),
//           child: Column(
//             children: [
//               //First let's create our menu bar
//               Row(
//                 children: [
//                   // for the first par i'll need to create a custom widget for my avatar button
//                   avatarWidget(_avatarUrl[0], 50.0),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                   Expanded(
//                     child: Text(
//                       "Messages",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20.0,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ),
//                   MaterialButton(
//                     onPressed: () {},
//                     elevation: 0.0,
//                     padding: EdgeInsets.all(8.0),
//                     color: Color(0xffef882b),
//                     shape: CircleBorder(),
//                     child: Icon(Icons.edit, color: Colors.white),
//                   )
//                 ],
//               ),
//               //Now let's create the search bar
//               SizedBox(
//                 height: 20.0,
//               ),
//               TextField(
//                 cursorColor: Colors.white,
//                 style: TextStyle(color: Colors.white),
//                 decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.search, color: Colors.white),
//                     hintText: "Search",
//                     contentPadding: EdgeInsets.only(left: 34.0),
//                     filled: true,
//                     fillColor: Colors.grey[800],
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(50.0),
//                       borderSide: BorderSide.none,
//                     )),
//               ),
//               SizedBox(
//                 height: 20.0,
//               ),
//               //Now it's time to create our list view for storys
//               Container(
//                 height: 60.0,
//                 width: double.infinity,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     //let's now create our story widget, but before let's add the add button
//                     MaterialButton(
//                       onPressed: () {},
//                       elevation: 0.0,
//                       padding: EdgeInsets.all(8.0),
//                       color: Colors.grey[800],
//                       shape: CircleBorder(),
//                       child: Icon(Icons.add, color: Colors.grey[300]),
//                     ),
//                     //Now let's create our storybutton widget
//                     storyButton(_avatarUrl[1], 60.0),
//                     storyButton(_avatarUrl[2], 60.0),
//                     storyButton(_avatarUrl[3], 60.0),
//                     storyButton(_avatarUrl[4], 60.0),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 10.0,
//               ),
//               //Now we will build the chat feed listview
//               Expanded(
//                 child: ListView(
//                   children: [
//                     //first let's create our list items widget
//                     listItem(
//                         _avatarUrl[2], "David ro", String, "Wassup", "9:53PM"),
//                     listItem(_avatarUrl[3], "kasidie", String,
//                         "We are waiting for you", "8:33PM"),
//                     listItem(_avatarUrl[4], "Lynda", String,
//                         "Hey can you help me", "6:54AM"),
//                     listItem(_avatarUrl[5], "Suizie Q", String, "hank you",
//                         "Yesterday"),
//                     listItem(_avatarUrl[7], "Joseph", String, "Hey wassup",
//                         "Yesterday"),
//                     listItem(_avatarUrl[8], "Jonathan", String, "okey",
//                         "Mon, 8:50AM"),
//                     //and now all what you have to do is to duplicate that line to have a real chat feed
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//
//       //Now i'm going to create the button menu bar
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xfffff5e0),
//         unselectedItemColor: Color(0xffffffff),
//         selectedItemColor: Color(0xffef882b),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             title: Text("Chat"),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.people),
//             title: Text("Friend Requests"),
//           ),
//         ],
//       ),
//     );
//   }
// }
