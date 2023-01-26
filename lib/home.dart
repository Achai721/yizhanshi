import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:untitled/study/listOnPerss.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
var _currentIndex = 0;
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        items: [
          createItem("home", "首页"),
          createItem("subject", "通过申请"),
          createItem("group", "小组"),
          createItem("mall", "市集"),
          createItem("profile", "我的"),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      appBar: AppBar(
        title: Text("Home"),
      ),
      body:  Container(

          child:
          Column(
            children: [
              IndexedStack(
                index: _currentIndex,
                children: <Widget>[
                  tab(),
                  Listview(),
                  tab(),
                  Listview(),
                  tab(),

                  // Subject(),
                  // Group(),
                  // Mall(),
                  // Profile()
                ],
              ),

            ],

          )


      ),
    );
  }
}

class tab extends StatelessWidget {
  const tab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(

            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      "https://tva1.sinaimg.cn/large/006y8mN6gy1g7aa03bmfpj3069069mx8.jpg"),
                  child: Container(
                      alignment: Alignment(0, .5),
                      width: 200,
                      height: 200,
                      child: Text(
                        "兵长利威尔",
                        style: TextStyle(fontSize: 10),
                      )),
                ),
              ),
              Text("welcome you liver",
                style: TextStyle(
                  fontWeight:FontWeight.w900,
                  fontSize: 20,
                  textBaseline: TextBaseline.ideographic,
                  decoration: TextDecoration.underline,
                ),)
            ]),
        Container(
          height: 200,
          child: ListView(
              children:
              List.generate(4, (index){
                return Container(
                  height: 50,

                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.red),
                  ),
                  child: Text("第${index+1}栋：${index}层"),
                );
              })

          ),
        ),
      ],
    );
  }
}



BottomNavigationBarItem createItem(String iconName, String title) {
  return BottomNavigationBarItem(
      icon: Icon(Icons.add),
      activeIcon: Icon(Icons.add),
      title: Text(title)
  );
}

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayOut();

  }
}




class LayOut extends StatefulWidget {
  const LayOut({Key? key}) : super(key: key);

  @override
  _LayOutState createState() => _LayOutState();
}



class _LayOutState extends State<LayOut> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      height: 200,
      child: ListView.builder(

          itemCount:20,
          itemBuilder: (BuildContext context, int position){
            return GestureDetector(
                child:Container(
                  height:40,
                  child:Text("$position",style:TextStyle(
                    color: Colors.red,
                    backgroundColor: Colors.black,
                  ) ,),
                ),
                //item 点击事件
                onTap: (){
                  print("点击到第"+position.toString());
                  setState(() {
                    Todo  todos = new Todo("title", "description");
                    todos.title ="nh";
                    todos.description="666";
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(todo: todos),
                      ),
                    );
                  });
                },
                //item 长按事件
                onLongPress: (){
                  setState(() {
                    showCustomDialog(context,position);
                  });
                  print("长按"+position.toString());
                }
            );
          }),
    );
  }
}


void  onItemClick(int index){
  print( "你点击到第"+index.toString()+"条数据");
}

void showCustomDialog(BuildContext context,int position ){
  print("position ---- >  "+position.toString());
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return new AlertDialog(
          title:new Text("点击提示"),
          content:new SingleChildScrollView(
              child:new ListBody(children: [new Text("${"点击到第"+position.toString()+"条数据"}")])),
          actions: [
            new FlatButton(
              child:new Text("取消"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child:new Text("确认"),
              onPressed: (){
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      });
}

class DetailScreen extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetailScreen({Key? key, required this.todo}) : super(key: key);

  // Declare a field that holds the Todo.
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}

class Todo {
  String title;
  String description;

  Todo(this.title, this.description);
}
