import 'package:flutter/cupertino.dart';

class CupertinoMain extends StatefulWidget{
@override
State<StatefulWidget> createState(){
  return _CupertinMain();
}

}

class _CupertinMain extends State<CupertinoMain> {
  late CupertinoTabBar tabBar;
  @override
  void initState() {
    super.initState();
    tabBar = CupertinoTabBar(items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
      BottomNavigationBarItem(icon: Icon(CupertinoIcons.add)),
    ]);
  }

    @override
    Widget build(BuildContext context) {
      return CupertinoApp(
        home: CupertinoTabScaffold(
            tabBar: tabBar,
            tabBuilder: (context, value) {
          if (value == 0) {
            return Container(
              child: Center(
                child: CupertinoButton(
                  child: Text('쿠퍼티노 버튼'),
                  color: CupertinoColors.activeBlue,
                  onPressed: (){},
                ),
              ),
            );
          } else {
            return Container(
              child: Center(
                child: Text('쿠퍼티노 탭 2'),
              ),
            );
          }
        }),

      );
    }
  }
