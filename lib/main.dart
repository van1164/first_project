import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'cupertinoMain.dart';
void main() {
  runApp(CupertinoMain());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState(){
    return _MyApp();
  }

}

class _MyApp extends State<MyApp>
    with SingleTickerProviderStateMixin{
  var switchValue = false;
  var printing = ' ';
  // This widget is the root of your application.
  TextEditingController phone_number = TextEditingController();
  String text= "가자!";
  Color _color = Colors.blueGrey;
  late TabController ctr;
  @override
  void initState(){
    super.initState();
    ctr = new TabController(length: 2, vsync: this);
  }
  @override
  void dispose(){
    ctr.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '첫앱',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("가보자 가보자"),),
        floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
        onPressed: (){},
        ),
        body: TabBarView(children: <Widget>[First(),Second()],controller: ctr),
        bottomNavigationBar: TabBar(tabs: <Tab>[
          Tab(icon: Icon(Icons.looks_one_rounded,color: Colors.blue),),
          Tab(icon:Icon(Icons.looks_two_rounded,color: Colors.blue),)
        ],controller: ctr,
        ),
        ));


  }


}


