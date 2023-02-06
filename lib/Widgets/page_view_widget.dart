import 'package:flutter/material.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({Key? key}) : super(key: key);

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
         centerTitle: true,
          title: Text("PageView"),
        ),
        body: PageView(
          children: <Widget>[
            Card(
              color: Colors.greenAccent,
              elevation: 20,
              child: Text("Home"),
              shadowColor: Colors.black45,
            ),Card(
              color: Colors.pinkAccent,
              elevation: 20,
              child: Text("Contact"),
              shadowColor: Colors.black45,
            ),Card(
              color: Colors.yellow,
              elevation: 20,
              child: Text("About us"),
              shadowColor: Colors.black45,
            ),
          ],
        ),
      ),
    );
  }
}
