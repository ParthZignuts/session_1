import 'package:flutter/material.dart';

class StreamBuilderWidget extends StatefulWidget {
  const StreamBuilderWidget({Key? key}) : super(key: key);

  @override
  State<StreamBuilderWidget> createState() => _StreamBuilderWidgetState();
}

class _StreamBuilderWidgetState extends State<StreamBuilderWidget> {

  Stream<DateTime> generateNo() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield DateTime.now();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("StreamBuilder"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(

                child: StreamBuilder(
                  stream: generateNo(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator();
                    }
                    else{
                      return Text((snapshot.data.toString()));
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
