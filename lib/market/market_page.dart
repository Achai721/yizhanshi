import 'package:flutter/material.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
  int _selectedIndex = 0;
  final List<SectionWidget> _sections = [
    SectionWidget(title: '精华  '),
    SectionWidget(title: '集市  '),
    SectionWidget(title: '拼车  '),
    SectionWidget(title: '运动  '),
    SectionWidget(title: '学习  '),
    SectionWidget(title: '服务  '),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 30, 20, 20),
        child: Column(
          children: [
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(1),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: 340,
                  height: 43,
                  child: TextField(
                    maxLines: 1,
                    decoration: InputDecoration(
                      hintText: '搜索',
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                ),
              ],
            ), //搜索
            // Row(
            //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            Container(
              height: 40,
              color: Color(0xfffff5e0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedIndex = index;
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Text(
                        //     _sections[index].title,
                        //     style: TextStyle(
                        //       fontSize: 20,
                        //       color: _selectedIndex == index
                        //           ? Color(0xffEF882B)
                        //           : Colors.black,
                        //     ),
                        // ),
                        SizedBox(width: 14,),
                        Text(
                          _sections[index].title,
                          style: TextStyle(
                            fontSize: 20,
                            color: _selectedIndex == index
                                ? Color(0xffEF882B)
                                : Colors.black,
                          ),
                        ),//精华
                        SizedBox(width: 10,),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: _sections[_selectedIndex],
            ),
            // ],
            // ),
          ],
        ),
      ),

      // body: Column(
      //   children: [
    );
  }
}

class SectionWidget extends StatefulWidget {
  final String title;

  const SectionWidget({required this.title});

  @override
  _SectionWidgetState createState() => _SectionWidgetState();

  String get getTitle => title;
}

class Post {
  final String avatar;
  final String name;
  final String date;
  final String content;
  bool liked = false;
  bool commented = false;
  bool followed = false;
  int likes = 10;
  int comments = 5;
  int follows = 3;

  Post({
    required this.avatar,
    required this.name,
    required this.date,
    required this.content,
    required Comparable<String> title,
  });

  void addLike() {
    liked = true;
    likes++;
  }

  void addComment() {
    commented = true;
    comments++;
  }

  void addFollow() {
    followed = true;
    follows++;
  }
}

class _SectionWidgetState extends State<SectionWidget> {
  final List<Post> _posts = [
    Post(
      avatar: 'images/Rectangle_13(2).png',
      name: '张三',
      date: '2021-01-01',
      title: '一起来考研自习吧',
      content: '我在Corner开设了一间考研自习室，要考研的小伙伴一起来自习捏。',
    ),
    Post(
      avatar: 'images/Rectangle_13(1).png',
      name: '李四',
      date: '2021-01-02',
      title: '一起来撸猫猫哇',
      content: '我在Corner开设了一间线上猫咖，喜欢猫咪的小伙伴们一起来撸猫捏。',
    ),
    Post(
      avatar: 'assets/images/avatar2.png',
      name: '李四',
      date: '2021-01-02',
      title: '一起来撸狗狗哇',
      content: '我在Corner开设了一间线上狗咖，喜欢猫咪的小伙伴们一起来撸狗捏。',
    ),
    Post(
      avatar: 'assets/images/avatar2.png',
      name: '李四',
      date: '2021-01-02',
      title: '一起来打羽毛球哇',
      content: '我在Corner开设了一间线上羽毛球馆，喜欢打羽毛球的小伙伴们一起来play捏。',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _posts.length,
      itemBuilder: (context, index) {
        return Card(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(_posts[index].avatar),
                    ),
                    SizedBox(width: 8),
                    Text(_posts[index].name),
                    SizedBox(width: 8),
                    Text(_posts[index].date),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  _posts[index].content,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _posts[index].addLike();
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.thumb_up),
                          SizedBox(width: 5),
                          Text('点赞 (${_posts[index].likes})'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _posts[index].addComment();
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.comment),
                          SizedBox(width: 5),
                          Text('评论 (${_posts[index].comments})'),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          _posts[index].addFollow();
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.person_add),
                          SizedBox(width: 5),
                          Text('跟随 (${_posts[index].follows})'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

//class Post {
// final String avatar;
// final String name;
// final String date;
//final String title;
//  final String content;
// bool liked = false;
// bool commented = false;
// bool followed = false;
// int likes = 10;
//int comments = 5;
//int follows = 3;

//Post({
// required this.avatar,
// required this.name,
// required this.date,
//required this.title,
//required this.content,
// });
