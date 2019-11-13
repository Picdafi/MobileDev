import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image from assets"),
        ),
        body: Image.asset('assets/images/burunghijau2.png'), //   <--- image here
      ),
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter layout demo',
//      home: Scaffold(
//        appBar: AppBar(
//          title: Text('Flutter layout demo'),
//        ),
//        body: Center(
//          child:buildRow()
//        ),
//      ),
//    );
//  }
//
//
//  Widget buildRow() =>
//    Row(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: <Widget>[
//        Image.asset('images/burunghijau2.png'),
//      ],
//    );
//
//  Widget buildColumn() =>
//      // #docregion Column
//    Column(
//      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//      children: [
//      Image.asset('images/burunghijau2.jpg'),
//    ],
//  );
//
//}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      decoration: BoxDecoration(color: Colors.white),
//      child: Center(
//        child: Text(
//          'Hello World',
//          textDirection: TextDirection.ltr,
//          style: TextStyle(
//            fontSize: 32,
//            color: Colors.black87,
//          ),
//        ),
//      ),
//    );
//  }
//}

