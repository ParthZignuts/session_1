import 'package:flutter/material.dart';

class SliverAppbarWidget extends StatefulWidget {
  const SliverAppbarWidget({Key? key}) : super(key: key);

  @override
  State<SliverAppbarWidget> createState() => _SliverAppbarWidgetState();
}

class _SliverAppbarWidgetState extends State<SliverAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              centerTitle: true,
              expandedHeight: 200,
              title: Text(
                "My AppBar",
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
              elevation: 20,
              backgroundColor: Colors.greenAccent,
              leading: Icon(Icons.arrow_back),
              actions: [
                Icon(Icons.settings),
              ],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  "https://images.unsplash.com/photo-1675191475318-d2bf6bad1200?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1332&q=80",
                  fit: BoxFit.fill,
                ),
                title: Text("Flexible Title"),
              ),
            ),

            // SliverList(
            //   delegate: SliverChildBuilderDelegate(
            //         (context, index) => ListTile(
            //       tileColor: (index % 2 == 0) ? Colors.black45 : Colors.green[50],
            //       title: Center(
            //         child: Text('$index',
            //             style: TextStyle(
            //                 fontWeight: FontWeight.normal,
            //                 fontSize: 50,
            //                 color: Colors.greenAccent[400]) //TextStyle
            //         ), //Text
            //       ), //Center
            //     ), //ListTile
            //     childCount: 51,
            //   ), //SliverChildBuildDelegate
            // ),
            SliverGrid(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 300,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    color: (index%2==0)?Colors.greenAccent:Colors.yellow,
                    child: Text("Grid item :$index"),
                  );
                },
                childCount: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
