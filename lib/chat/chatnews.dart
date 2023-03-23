import 'package:flutter/material.dart';

class news extends StatefulWidget {
  const news({Key? key}) : super(key: key);

  @override
  State<news> createState() => _newsState();
}

class _newsState extends State<news> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xfffff5e0),
      body: Center(
        child: Text("News",style:TextStyle(color: Colors.black,fontSize: 30)),
      ),
    );
  }
}
