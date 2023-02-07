import 'package:flutter/material.dart';

class DissmisibleWidget extends StatefulWidget {
  const DissmisibleWidget({Key? key}) : super(key: key);

  @override
  State<DissmisibleWidget> createState() => _DissmisibleWidgetState();
}

class _DissmisibleWidgetState extends State<DissmisibleWidget> {
  List<int> items = List<int>.generate(20, (int index) => index);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dissmisile Widget"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              background: Container(
                color: Colors.red,
                child: Icon(Icons.delete),
              ),
              key: ValueKey<int>(items[index]),
              child: ListTile(
                title: Text("Item :${items[index]}"),
              ),
            );
          }
        ),
      ),
    );
  }
}
