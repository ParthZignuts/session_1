import 'package:flutter/material.dart';
import 'package:session_1/screens/second_screen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First Screen'),),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ( BuildContext context) => SecondScreen()));
            },
            child: Container(
              width: 200,
              height: 200,
              child: Hero(
                tag: "img1",
                child: Image.network("https://images.unsplash.com/photo-1581833971358-2c8b550f87b3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1171&q=80"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
