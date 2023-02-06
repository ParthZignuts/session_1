import 'package:flutter/material.dart';

class FutureBuilderWidget extends StatefulWidget {
  const FutureBuilderWidget({Key? key}) : super(key: key);

  @override
  State<FutureBuilderWidget> createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  String imgUrl = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("FutureBuilder"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 350,
                child: FutureBuilder(
                  future: getData(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return SizedBox(
                        width: 10,
                        height: 10,
                        child: const CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      );
                    } else {
                      return Center(
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    }
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text("Reload"))
            ],
          ),
        ),
      ),
    );
  }

  Future<String> getData() async {
    await Future.delayed(Duration(seconds: 3));
    imgUrl =
        "https://images.unsplash.com/photo-1570678711029-f2153eee7fd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1174&q=80";
    return imgUrl;
  }
}
