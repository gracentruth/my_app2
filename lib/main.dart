import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
          print(context);
          Scaffold.of(context).showSnackBar(SnackBar(
              content: Text('hello',
              textAlign: TextAlign.center,
                style:TextStyle(
                  color:Colors.white
                ) ,
              ),
            backgroundColor: Colors.yellow,
            duration: Duration(milliseconds: 1000),

          ));
        },
      ),
    );
  }
}
