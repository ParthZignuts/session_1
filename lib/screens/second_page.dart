import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  static String id="page2";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Seconde Page"),
        ),
        body: Container(
          child: Hero(
            tag: "page1",
            child: Image.network("https://images.unsplash.com/photo-1606663889134-b1dedb5ed8b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhcnRvb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
          ),
        ),
      ),
    );
  }
}
