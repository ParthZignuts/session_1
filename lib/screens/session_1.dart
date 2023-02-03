import 'package:flutter/material.dart';
class Session1 extends StatelessWidget {
  const Session1({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black45),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Git",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black45),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Command",
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ),
                    ),

                  ],
                ),
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
    );;
  }
}
