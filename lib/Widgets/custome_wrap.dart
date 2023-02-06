import 'package:flutter/material.dart';
class CustomeWrap extends StatelessWidget {
  const CustomeWrap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      direction: Axis.horizontal,
      children: [
        Container(
          color: Colors.orangeAccent,
          width: 80,
          height: 100,
        ),
        Container(
          color: Colors.blue,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.red,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.lime,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.cyan,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.lime,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.cyan,
          width: 100,
          height: 100,
        ),
        Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ],
    );;
  }
}
