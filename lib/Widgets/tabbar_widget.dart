import 'package:flutter/material.dart';

class TabbarWidget extends StatefulWidget {
  const TabbarWidget({Key? key}) : super(key: key);

  @override
  State<TabbarWidget> createState() => _TabbarWidgetState();
}

class _TabbarWidgetState extends State<TabbarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Tabbars"),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("Chats"),
                  icon: Icon(Icons.chat),
                ),
                Tab(
                  child: Text("Status"),
                  icon: Icon(Icons.add_circle),
                ),
                Tab(
                  child: Text("Calls"),
                  icon: Icon(Icons.call),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Chats"),),
              Center(child: Text("Status"),),
              Center(child: Text("Calls"),),
            ],
          ),
        ),
      ),
    );
  }
}
