import 'package:flutter/material.dart';

class joined extends StatefulWidget {
  const joined({Key? key}) : super(key: key);

  @override
  State<joined> createState() => _joinedState();
}

class _joinedState extends State<joined> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.white,
                ),
                width: 700,
                height: 600,
                child: Image(
                  image: AssetImage(
                    'images/mycornerjoined.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ))),
    );
  }
}
