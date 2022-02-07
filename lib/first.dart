import 'package:flutter/material.dart';

class First extends StatelessWidget{
  final List<String> lst = <String>['여기는','첫번째','화면입니다.'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        child: Center(
          child: ListView.builder(itemBuilder: (context,position){
            return GestureDetector(
              child:Center(child:Text('${lst[position]}',style: TextStyle(fontSize: 40,color: Colors.black),),),
              onTap: (){
                AlertDialog dialog = AlertDialog(
                  content: 
                  Text('${lst[position]}',
                  style: TextStyle(fontSize: 30.0),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('확인'),
                  ),
                ],
                );
                showDialog(context: context, builder: (BuildContext context)=> dialog);

              },
            );
          },
          itemCount: lst.length,),
        ),
      ),
    );
  }
}
