import 'package:flutter/material.dart';

class apply extends StatefulWidget {
  const apply({Key? key}) : super(key: key);

  @override
  State<apply> createState() => _applyState();
}

class _applyState extends State<apply> {
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
                    'images/chatapply.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ))),
    );
  }
}
