import 'package:flutter/material.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
        child: Padding(
          padding: EdgeInsets.fromLTRB(31, 47, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Positioned(
              //   top: 200,
              //   left: 50,
              //   child:
              Row(
                //第一行
                children: [
                  Container(
                    width: 300,
                    height: 34,
                    child: TextField(
                      //搜索框
                      decoration: InputDecoration(
                        fillColor: Color(0xffF7D5BC
                        ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "搜索",),
                    ),
                  ),
                  //搜索框
                  SizedBox(width: 20),
                  Icon(Icons.search_outlined, size: 20)
                ],
              ),

              // ),
              Text(
                "搜索记录",
                style: TextStyle(color: Color(0xffACA6A6), fontSize: 19),
              ),
              Text(
                "空",
                style: TextStyle(fontSize: 18, color: Color(0x7a392e1c)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
