import 'package:flutter/material.dart';

class made extends StatefulWidget {
  const made({Key? key}) : super(key: key);

  @override
  State<made> createState() => _madeState();
}

class _madeState extends State<made> {
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
                    'images/cornermade.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ))),
    );
  }
}
