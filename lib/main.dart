import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
      body:Center(
        child:FlatButton(
          onPressed: (){
            flutterToast();
          },
          child: Text('toast'),
          color:Colors.blue,
        ),
      )  , // MySnackBar(),
    );
  }
}

void flutterToast(){
  Fluttertoast.showToast(msg: 'Flutter',
  gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.redAccent,
    fontSize: 20.0,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT

  );
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
