import 'package:flutter/material.dart';

class AnimatedAlignWdget extends StatefulWidget {
  const AnimatedAlignWdget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWdget> createState() => _AnimatedAlignWdgetState();
}

class _AnimatedAlignWdgetState extends State<AnimatedAlignWdget> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Container(
        color: Colors.black,
        child: AnimatedAlign(
          alignment: selected ? Alignment.bottomLeft : Alignment.topRight,
          duration: Duration(seconds: 5),
          curve: Curves.bounceInOut ,
          child: Image.network("https://img.freepik.com/free-vector/cute-teddy-bear-waving-hand-cartoon-icon-illustration_138676-2714.jpg?w=2000",
           height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}
