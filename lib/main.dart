import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Git',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Center(
          child: Container(
            child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Text(
                  "Git Commands",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),
                Text(
                  "git init",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),
                Text(
                  "git commit -m  msg here",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),
                Text(
                  "git push origin master",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                      fontSize: 35),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
