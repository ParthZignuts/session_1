import 'package:flutter/material.dart';

class CheckedBoxlist extends StatefulWidget {
  const CheckedBoxlist({Key? key}) : super(key: key);

  @override
  State<CheckedBoxlist> createState() => _CheckedBoxlistState();
}

class _CheckedBoxlistState extends State<CheckedBoxlist> {
  bool mon = false;
  bool tus = false;
  bool wed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('CheckBoxList'),
        ),
        body: Column(
          children: <Widget>[
            CheckboxListTile(
                activeColor: Colors.greenAccent,
                checkColor: Colors.black45,
                title: Text("Developer"),
                subtitle: Text('SE'),
                value: mon,
                onChanged: (val) {
                  setState(() {
                    mon = val!;
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.redAccent,
                checkColor: Colors.black,
                title: Text("Intern"),
                subtitle: Text('2023'),
                value: tus,
                onChanged: (val) {
                  setState(() {
                    tus = val!;
                  });
                }),
            CheckboxListTile(
                activeColor: Colors.pinkAccent,
                checkColor: Colors.black,
                title: Text("DevOps"),
                subtitle: Text('devops'),
                value: wed,
                onChanged: (val) {
                  setState(() {
                    wed = val!;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
