import 'dart:async';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: PageView(
        children: [
          Image.asset("images/img_1.png",fit: BoxFit.cover,),
          Image.asset("images/img_2.png",fit: BoxFit.cover,),
          InkWell(child: Image.asset("images/img_3.png",fit: BoxFit.cover,),onTap: ()=>
            Navigator.of(context).pushNamed("/login"),),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
