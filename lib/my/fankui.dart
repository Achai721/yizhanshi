import 'package:flutter/material.dart';

class fankui extends StatelessWidget {
  const fankui({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffff5e0),
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 20,
                      )),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "反馈",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  // SizedBox(
                  //   width: 60,
                  // ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                maxLines: 6,
                maxLength: 300,
                decoration: InputDecoration(
                  hintText: "请输入反馈内容",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
              Positioned(

                  child: RaisedButton(
                onPressed: () {},
                child: Text(
                  "发送",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                color: Color(0xffef882b),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
              ))
            ],
          ),
        ));
  }
}
