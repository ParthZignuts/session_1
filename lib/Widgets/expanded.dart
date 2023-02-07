import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomExpanded extends StatefulWidget {
  const CustomExpanded({Key? key}) : super(key: key);

  @override
  State<CustomExpanded> createState() => _CustomExpandedState();
}

class _CustomExpandedState extends State<CustomExpanded> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expanded Widget"),
        ),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,

              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.lime,
              ),
            ),
          ],
        ),
        //Floating Action Button
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Colors.black45,
          overlayColor: Colors.lime,
          overlayOpacity: 0.5,
          children: [
            SpeedDialChild(
              label: "Mail",
              backgroundColor: Colors.black45,
              child: Icon(
                Icons.email,
                color: Colors.red,
              ),
              onTap: () => Fluttertoast.showToast(
                msg: "You Clicked Mail",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.black45,
              ),
            ),
            SpeedDialChild(
              label: "Share",
              backgroundColor: Colors.black45,
              child: Icon(Icons.share, color: Colors.blue),
              onTap: () => Fluttertoast.showToast(
                msg: "You Clicked Share",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.black45,
              ),
            ),
            SpeedDialChild(
              label: "Copy",
              backgroundColor: Colors.black45,
              child: Icon(
                Icons.copy,
                color: Colors.white,
              ),
              onTap: () => Fluttertoast.showToast(
                msg: "You Clicked Copy",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.black45,
              ),
            ),
            SpeedDialChild(
              label: "Instagram",
              backgroundColor: Colors.black45,
              child: Icon(
                FontAwesomeIcons.instagram,
                color: Colors.pinkAccent,
              ),
              onTap: () => Fluttertoast.showToast(
                msg: "You Clicked Instagram",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.black45,
              ),
            ),
            SpeedDialChild(
              label: "WhatsApp",
              backgroundColor: Colors.black45,
              child: Icon(
                FontAwesomeIcons.whatsapp,
                color: Colors.greenAccent,
              ),
              onTap: () => Fluttertoast.showToast(
                msg: "You Clicked WhatsApp",
                toastLength: Toast.LENGTH_LONG,
                backgroundColor: Colors.black45,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
