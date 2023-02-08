import 'package:flutter/material.dart';
import 'package:session_1/screens/session_2.dart';
import 'package:session_1/screens/session_3_Widgets.dart';
import 'package:session_1/Widgets/dialogbox_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Session3Widgets();
  }

}

