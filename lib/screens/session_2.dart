import 'package:flutter/material.dart';
import 'dart:collection';

class Session2 extends StatefulWidget {
  @override
  State<Session2> createState() => _Session2State();
}

class _Session2State extends State<Session2> {
  bool likeState = false;
  var selectedIndex = 0;
  var names = ['Java', 'Flutter', 'Dart', 'c', 'react', 'js', 'node'];
  var favoriteItems = [];

  String txtNames = 'c++';
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    //List Containing Widgets To show on Cliking of Navigation Rail
    List<Widget> likePage = [
      //This is for Home Page
      Container(
        alignment: Alignment.center,
        color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              height: 80,
              width: 200,
              child: Card(
                child: Center(
                  child: Text(
                    "Light Stream",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                  ),
                ),
                color: Colors.lime,
                shadowColor: Colors.black,
                elevation: 30,
              ),
            ),
            Flexible(
              child: Text(
                txtNames,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.favorite,
                    color: likeState ? Colors.white : Colors.red,
                  ),
                  onPressed: () => {
                    setState(() {
                      likeState = !likeState;
                      favoriteItems.add(txtNames);
                    }),
                    print("Button Pressed"),
                  },
                  label: Text(
                    "Like",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      if (counter <= names.length) {
                        txtNames = names[counter];
                      }
                      counter++;
                      print(txtNames);
                      print(names);
                    }),
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),



      //this is for Liked Page
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(color: Colors.orangeAccent),
        child: favoriteItems.isEmpty
            ? Center(
                child: Text("No Any Favorite Item Yet"),
              )
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    child: Text(
                      favoriteItems.toString(),
                    ),
                  );
                }),

      ),
    ];




    return MaterialApp(
      // This line is used for desable the debug banner
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lime,
      ),
      title: "Session 2",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Session 2"),
        ),
        body: Row(
          children: [
            NavigationRail(
              labelType: NavigationRailLabelType.selected,
              destinations: [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text("Home"),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text("Favorite"),
                ),
              ],
              selectedIndex: selectedIndex,
              onDestinationSelected: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
            Expanded(
              child: likePage[selectedIndex],
            ),
          ],
        ),
      ),
    );
  }
}
