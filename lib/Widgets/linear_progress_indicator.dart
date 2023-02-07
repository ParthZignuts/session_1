import 'package:flutter/material.dart';

class LinearProgressIndcatorWidget extends StatefulWidget {
  const LinearProgressIndcatorWidget({Key? key}) : super(key: key);

  @override
  State<LinearProgressIndcatorWidget> createState() =>
      _LinearProgressIndcatorWidgetState();
}

class _LinearProgressIndcatorWidgetState
    extends State<LinearProgressIndcatorWidget> {
  double _values = 0.0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.black,
            minHeight: 10,
            color: Colors.greenAccent,
            value: _values,
          ),
          CircularProgressIndicator(
            backgroundColor: Colors.black,
            value: _values,
          ),
        ],
      ),
    );
  }
}
