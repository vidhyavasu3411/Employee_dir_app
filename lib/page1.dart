import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp( home: MyApp1(),));
}

class MyApp1 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    final photos = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter TextField Example'),
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(15),
                  child:  Text(
                    "$photos[index].name",
                    style: TextStyle(
                      fontFamily: 'custom font', // remove this if don't have custom font
                      fontSize: 20.0, // text size
                      color: Colors.white, // text color
                    ),
                  ),
                          ),
                Padding(
                            padding: EdgeInsets.all(15),
                  child:  Text(
                    "$photos[index].email",
                    style: TextStyle(
                      fontFamily: 'custom font', // remove this if don't have custom font
                      fontSize: 20.0, // text size
                      color: Colors.white, // text color
                    ),
                  ),
                          ),

              ],
            )
        )
    );
  }
}

class Todo {
}