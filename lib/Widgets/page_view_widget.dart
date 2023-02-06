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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("PageView"),
        ),
        body: Center(
          child: Container(

            child: PageView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Card(
                  color: Colors.greenAccent,
                  elevation: 20,
                  child: Center(child: Text("Home")),
                  shadowColor: Colors.black45,
                ),
                Card(
                  color: Colors.pinkAccent,
                  elevation: 20,
                  child: Center(child: Text("Contact")),
                  shadowColor: Colors.black45,
                ),
                Card(
                  color: Colors.yellow,
                  elevation: 20,
                  child: Center(child: Text("About us")),
                  shadowColor: Colors.black45,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
