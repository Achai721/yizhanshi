import 'package:flutter/material.dart';
// import 'package:myapp/chat.dart.dart';

class MyColors {
  static const Color color_ff90caf9 = Color(0xffef882b);
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // 不显示右上角的 debug
        title: '一站式服务平台',
        theme: ThemeData(
          primaryColor: Color(0xffef882b),
          buttonTheme: ButtonThemeData(
              buttonColor: Color(0xffef882b),
            disabledColor: Color(0xffef882b),
          )
        ),
        // 注册路由表
        routes: {
          "/": (context) => const HomePage(title: "登录"), // 首页路由
        });
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey _formKey = GlobalKey<FormState>();
  late String _email, _password;
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
            const SizedBox(height: 60),
            buildEmailTextField(), // 输入邮箱
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
            // 表单校验通过才会继续执行
            if ((_formKey.currentState as FormState).validate()) {
              (_formKey.currentState as FormState).save();
              //TODO 执行登录方法
              print('email: $_email, password: $_password');
            }
          },
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
          child: const Text("忘记密码？",
              style: TextStyle(fontSize: 14, color: Colors.grey)),
        ),
      ),
    );
  }

  Widget buildPasswordTextField(BuildContext context) {
    return TextFormField(
        obscureText: _isObscure, // 是否显示文字
        onSaved: (v) => _password = v!,
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

  Widget buildEmailTextField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: '用户名/手机号'),
      validator: (v) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(v!)) {
          return '请输入正确的用户名';
        }
      },
      onSaved: (v) => _email = v!,
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

//   Widget buildTitle() {
//     return const Padding(
//         padding: EdgeInsets.all(8),
//         child: Text(
//           '登录',
//           style: TextStyle(fontSize: 42),
//         ));
//   }
// }
//ALL IN ALL LOGIN
// //region 登录功能，密码正确则跳转
// bool _login() {
//   if (_userName.text == "admin" && _userPws.text == "123456") {
//     Navigator.of(context).pushAndRemoveUntil(
//         new MaterialPageRoute(
//             builder: (context) => new IndexPage()),
//             (route) => route == null);
//     return true;
//   } else {
//     showDialog(
//         context: context,
//         builder: (context) {
//           return AlertDialog(
//             title: Text("提示"),
//             content: Text("账号或密码错误，请检查"),
//             actions: <Widget>[
//               FlatButton(
//                 child: Text("确认"),
//                 onPressed: () {
//                   Navigator.of(context).pop(true); //关闭对话框
//                 },
//               )
//             ],
//           );
//         });
//     return false;
//   }
}
