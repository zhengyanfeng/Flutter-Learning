import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  title: '导航演示',
  home: FirstScreen(),
));


class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('导航 Demo'),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          children: <Widget>[
            Text('页面1',
              style: TextStyle(

              ),
            ),

            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Text('跳转'),
            ),
          ],
        ),
    );
  }
}

class SecondScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('页面2'),
        ),
        
        body: Center(
          child: RaisedButton(onPressed: (){ Navigator.pop(context);},
            child: Text('返回'),
          ),
        ),
    );
  }
}

