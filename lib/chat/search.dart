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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Positioned(
            //   top: 200,
            //   left: 50,
            //   child:
            Row(
              //第一行
              children: [
                TextField(
                  //搜索框
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      hintText: "搜索"),
                ), //搜索框
                SizedBox(width: 5),
                Icon(Icons.search_outlined, size: 20)
              ],
            ),
            // ),
            Text(
              "搜索记录",
              style: TextStyle(color: Color(0xffACA6A6), fontSize: 18),
            ),
            Text(
              "空",
              style: TextStyle(fontSize: 20, color: Color(0xff392E1C)),
            )
          ],
        ),
      ),
    );
  }
}
