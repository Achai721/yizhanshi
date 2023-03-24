import 'package:flutter/material.dart';

class received extends StatefulWidget {
  const received({Key? key}) : super(key: key);

  @override
  State<received> createState() => _receivedState();
}

class _receivedState extends State<received> {
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
                    'images/cornerreceived.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ))),
    );
  }
}
