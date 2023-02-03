import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:session_1/main.dart';

class Session2 extends StatefulWidget {
  @override
  State<Session2> createState() => _Session2State();
}

class _Session2State extends State<Session2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // primarySwatch: Colors.lime,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
      ),

      debugShowCheckedModeBanner: false,
      // This line is used for desable the debug banner
      title: "Session 2",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Session 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                height: 80,
                width: 200,
                child: Card(
                  child: Center(
                    child: Text(
                      "Light Stream",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                    ),
                  ),
                  color: Colors.green,
                  shadowColor: Colors.black,
                  elevation: 30,
                ),
              ),
              Text(
                "A Random Awesome Idea:",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 35),
              ),
              SizedBox(
                width: 150,
                child:ElevatedButton(
                  onPressed: () => {
                    print("Button Pressed"),
                  },
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LikeButton(),
                      Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
