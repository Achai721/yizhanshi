import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapp/chat/chat_page.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class MyColors {
  static const Color color_ff90caf9 = Color(0xffef882b);
}
 

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  final String title;
  // Future<String> getData() async {
  //   var response = await http.get(
  //       Uri.encodeFull( " http://127.0.0.1:4523/m1/2475148-0-default/login " ),
  //       headers: { "Accept" : "application/json" });
  //   setState(() {
  //     data = json.decode(response.body);
  //   });
  //   return "Success" ;  }
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
   String _phone="";
  String _password = "";
  bool _isObscure = true;
  Color _eyeColor = Colors.grey;
  final List _loginMethod = [
    // {
    //   "title": "facebook",
    //   "icon": Icons.facebook,
    // },
    // {
    //   "title": "google",
    //   "icon": Icons.fiber_dvr,
    // },
    // {
    //   "title": "twitter",
    //   "icon": Icons.account_balance,
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xfffff5e0)),
        child: Form(
        key: _formKey, // 设置globalKey，用于后面获取FormStat
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: kToolbarHeight), // 距离顶部一个工具栏的高度
            buildTitle(), // Login
            // buildTitleLine(), // Login下面的下划线
            const SizedBox(height: 40),
            buildphoneTextField(), // 输入邮箱
            const SizedBox(height: 30),
            buildPasswordTextField(context), // 输入密码
            buildForgetPasswordText(context), // 忘记密码
            const SizedBox(height: 60),
            buildLoginButton(context), // 登录按钮
            const SizedBox(height: 40),
            buildOtherLoginText(), // 其他账号登录
            buildOtherMethod(context), // 其他登录方式
            buildRegisterText(context), // 注册
          ],
        ),
      ),
      ),
    );
  }

  Widget buildRegisterText(context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('没有账号?'),
            GestureDetector(
              child: const Text('点击注册', style: TextStyle(color: Colors.green)),
              onTap: () {
                print("点击注册");
                Navigator.of(context).pushNamed("/register");
              },
            )
          ],
        ),
      ),
    );
  }

  Widget buildOtherMethod(context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: _loginMethod
          .map((item) => Builder(builder: (context) {
        return IconButton(
            icon: Icon(item['icon'],
                color: Theme.of(context).iconTheme.color),
            onPressed: () {
              //TODO: 第三方登录方法
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: Text('${item['title']}登录'),
                    action: SnackBarAction(
                      label: '取消',
                      onPressed: () {},
                    )),
              );
            });
      }))
          .toList(),
    );
  }

  Widget buildOtherLoginText() {
    return const Center(
      child: Text(
        '手机验证码登录',
        style: TextStyle(color: Colors.grey, fontSize: 14),
      ),
    );
  }

  Widget buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
          width: 221,
          height: 56,
        child: RaisedButton(

            // 设置圆角
            //   shape: MaterialStateProperty.all(const StadiumBorder(
            //       side: BorderSide(style: BorderStyle.none))),
          color: Color(0xffef882b),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(29.0)),
          child: Text('登录',
              style: Theme.of(context).primaryTextTheme.headline5),
          onPressed: () {

            // if (_formKey.currentState.validate()) {
            //   ///只有输入的内容符合要求通过才会到达此处
            //   _formKey.currentState.save();
            //   //TODO 执行登录方法
            //   print('phone:$_phone , assword:$_password');
              Navigator.of(context).pushNamed("/shiming");
          } // 表单校验通过才会继续执行
    ),
    ),
    );
    }

  Widget buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Align(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () {
            // Navigator.pop(context);
            print("忘记密码");
          },
          child: const Text("忘记密码",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ),
    );
  }

  Widget buildPasswordTextField(BuildContext context) {
    return TextFormField(
        // onSaved: (v) => _password = v,
        obscureText: _isObscure, // 是否显示文字
        onChanged: (v) => _password = v,
        validator: (v) {
          if (v!.isEmpty) {
            return '请输入密码';
          }
        },
        decoration: InputDecoration(
            labelText: "密码",
            suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                // 修改 state 内部变量, 且需要界面内容更新, 需要使用 setState()
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = (_isObscure
                      ? Colors.grey
                      : Theme.of(context).iconTheme.color)!;
                });
              },
            )));
  }

  Widget buildphoneTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: '用户名/手机号'),
      validator: (v) {
        var phoneReg = RegExp(
            r'^((13[0-9])|(14[0-9])|(15[0-9])|(16[0-9])|(17[0-9])|(18[0-9])|(19[0-9]))\d{8}$');
        if (!phoneReg.hasMatch(v!)) {
          return '请输入正确的用户名';
        }
      },
      onChanged: (v) => _phone = v,
      // onSaved: (v) => _phone = v,
    );
  }

  Widget buildTitle() {
    return Padding(
        padding: const EdgeInsets.only(left: 20.0, top: 100.0),
        child:Container(
          child: Image(
                image:AssetImage('images/Rectangle_99.png'),
            width: 70.0,
            height: 70.0,
            ),
          ),
        );
  }
}


