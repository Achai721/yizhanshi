import 'package:flutter/material.dart';

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                width: 700,
                height: 600,
                child: Image(
                  image: AssetImage(
                    'images/chatnews.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ))),
    );
  }
}
