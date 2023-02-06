import 'package:flutter/material.dart';
import 'package:session_1/Widgets/expanded.dart';
import 'package:session_1/Widgets/future_builder_widget.dart';
import 'package:session_1/Widgets/page_view_widget.dart';
import 'package:session_1/Widgets/stream_builder.dart';
import 'package:session_1/screens/session_2.dart';
import 'package:session_1/screens/session_3_Widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Session2();
  }
}
