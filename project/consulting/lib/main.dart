import 'package:flutter/material.dart';
//import 'package:consulting/chat.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primaryColor: Colors.white
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //final _controller = TextEditingController();
  //@override
  //Widget build(BuildContext context) {
    //return new Scaffold(
      //appBar: new AppBar(
        //title: new Text("Input User name"),
      //),
      //body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //children: <Widget>[
          //Container(
            //margin: EdgeInsets.all(10.0),
            //child: TextFormField(
              //controller: _controller,
              //decoration: InputDecoration(
                //  labelText: 'user name'
              //),
            //),
          //),
          //RaisedButton(
            //color: Colors.blue,
            //onPressed: () {
              //Navigator.push(
                //  context, MaterialPageRoute(builder: (builder) => ChatPage(_controller.text)));
            //},
            //child: Text("compleate", style: TextStyle(color: Colors.white),),
          //)
        //],
      //),
    //);
 // }
//}
final _controller = TextEditingController();
 Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("chat page"),
      ),
      //body: Container(
        //margin: const EdgeInsets.symmetric(horizontal: 8.0),
        //child: Column(
          //children: <Widget>[
            //new Flexible(
              //child: new ListView.builder(
                //padding: new EdgeInsets.all(8.0),
                //reverse: true,
                //itemBuilder: (_, int index){},
                //itemCount: 10,
              //),
           // ),
           // new Divider(height: 1.0),
           // Container(
             // margin: EdgeInsets.only(bottom: 20.0, right: 10.0, left: 10.0),
              //child: Row(
                //children: <Widget>[
                  //new Flexible(
                    //child: new TextField(
                      //decoration: new InputDecoration.collapsed(
                        //  hintText: "send message"),
                   // ),
                  //),
                  //new Container(
                    //child: new IconButton(
                      //  icon: new Icon(Icons.send, color: Colors.blue,),
                        //onPressed: () {}),
                 // ),
               // ],
            //  ),
          //  ),
        //  ],
      //  ),
    //  )
   // );
//  }
//}
 body: Container(
 margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: <Widget>[
              Flexible(
                child: StreamBuilder<QuerySnapshot>(
                  stream: Firestore.instance
                      .collection("chat_room")
                      .orderBy("created_at", descending: true)
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) return Container();
                    return new ListView.builder(
                      padding: new EdgeInsets.all(8.0),
                      reverse: true,
                    //  itemBuilder: (_, int index) {
                     //   DocumentSnapshot document =
                     //   snapshot.data.documents[index];

                       // bool isOwnMessage = false;
                       // if (document['user_name'] == widget._userName) {
                       //   isOwnMessage = true;
                      //  }
                      //  return isOwnMessage
                      //      ? _ownMessage(
                        //    document['message'], document['user_name'])
                          //  : _message(
                        //    document['message'], document['user_name']);
                    //  },
                      itemCount: snapshot.data.documents.length,
                    );
                  },
                ),
              ),
              new Divider(height: 1.0),
              Container(
                margin: EdgeInsets.only(bottom: 20.0, right: 10.0, left: 10.0),
                child: Row(
                  children: <Widget>[
                    new Flexible(
                      child: new TextField(
                        controller: _controller,
                        onSubmitted: _handleSubmit,
                        decoration:
                        new InputDecoration.collapsed(hintText: "send message"),
                      ),
                    ),
                    new Container(
                      child: new IconButton(
                          icon: new Icon(
                            Icons.send,
                            color: Colors.blue,
                          ),
                          onPressed: () {
                            _handleSubmit(_controller.text);
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
     ) );
  }

 // Widget _ownMessage(String message, String userName) {
   // return Row(
     // mainAxisAlignment: MainAxisAlignment.end,
      //children: <Widget>[
        //Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          //children: <Widget>[
           // SizedBox(height: 10.0,),
          //  Text(userName),
          //  Text(message),
        //  ],
      //  ),
    //    Icon(Icons.person),
    //  ],
  //  );
 // }

//  Widget _message(String message, String userName) {
//    return Row(
//      children: <Widget>[
//        Icon(Icons.person),
//        Column(
//          crossAxisAlignment: CrossAxisAlignment.center,
//          children: <Widget>[
//            SizedBox(height: 10.0,),
//            Text(userName),
//            Text(message),
//          ],
 //       )
//      ],
//    );
//  }

  _handleSubmit(String message) {
    _controller.text = "";
    var db = Firestore.instance;
    db.collection("chat_room").add({
 //     "user_name": widget._userName,
      "message": message,
      "created_at": DateTime.now()
    }).then((val) {
      print("sucess");
    }).catchError((err) {
      print(err);
    });
  }
}