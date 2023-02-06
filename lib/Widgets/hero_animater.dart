import 'package:flutter/material.dart';
import 'package:session_1/screens/second_page.dart';
import 'package:session_1/screens/second_page.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          child: InkWell(
            onTap:(){ Navigator.push(context,MaterialPageRoute(builder: (context)=>SecondPage()));},
            child: Hero(
              tag: "page1",
              child: Image.network("https://images.unsplash.com/photo-1606663889134-b1dedb5ed8b7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fGNhcnRvb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"),
            ),
          ),
        ),
      ),
      routes: {
        SecondPage.id :(context) => SecondPage(),
      },
    );
  }
}


