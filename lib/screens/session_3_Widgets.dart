import 'package:flutter/material.dart';
import 'package:session_1/Widgets/custome_wrap.dart';
import 'package:session_1/Widgets/first_screen.dart';
import 'package:session_1/Widgets/linear_progress_indicator.dart';
import 'package:session_1/Widgets/snackbar_widget.dart';

class Session3Widgets extends StatelessWidget {
  const Session3Widgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Widgets"),
        ),
        body: WidgetsDemo(),
      ),
    );
  }
}

class WidgetsDemo extends StatelessWidget {
  const WidgetsDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndcatorWidget();

  }
}
