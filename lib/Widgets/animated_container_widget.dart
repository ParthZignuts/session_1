import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: Container(
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            height: selected? 500.0 : 300.0,
            width: selected ? 300.0 : 500.0,
            curve: Curves.bounceInOut,
            color: selected ? Colors.black: Colors.lime,
            alignment: selected? Alignment.center: Alignment.centerRight,
            child: FlutterLogo(size: 200),
          ),
        ),
      ),
    );
  }
}
