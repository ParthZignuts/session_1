

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class DialogboxWidget extends StatefulWidget {
  @override
  State<DialogboxWidget> createState() => _DialogboxWidgetState();
}

class _DialogboxWidgetState extends State<DialogboxWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("DialogBox"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedButton(
                  text: "Warning Dialog",
                  color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(20),
                  buttonTextStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black),
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.warning,
                      animType: AnimType.leftSlide,
                      title: 'Warning',
                      desc: 'Warning Dialog ...',
                      showCloseIcon: true,
                      btnCancelOnPress: () {},
                      btnOkOnPress: () {},
                      btnCancelColor: Colors.red,
                      btnOkColor: Colors.green,
                    ).show();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedButton(
                  text: "Error Dialog",
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(20),
                  buttonTextStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black),
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      title: "Error",
                      desc: "That may Be Some Error",
                      dialogType: DialogType.error,
                      animType: AnimType.bottomSlide,
                      btnCancelOnPress: () {},
                      showCloseIcon: true,
                    ).show();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedButton(
                  text: "Question Dialog",
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(20),
                  buttonTextStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black),
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      title: "Question",
                      desc: "it's You?",
                      btnCancelOnPress: (){},
                      btnCancelText: "No",
                      btnOkOnPress: (){},
                      btnOkText: "Yes",
                      animType: AnimType.topSlide,
                      dialogType: DialogType.question,

                    ).show();
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AnimatedButton(
                  text: "Success Dialog",
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(20),
                  buttonTextStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Colors.black),
                  pressEvent: () {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.success,
                      desc: "Yehh!! Successfull",
                      animType: AnimType.scale,
                      title: "Success",
                    dialogBackgroundColor: Colors.greenAccent,
                      btnOkOnPress: (){},
                      btnOkColor: Colors.black45,
                    ).show();
                  },
                ),
              ),
              ElevatedButton(onPressed: (){
                AwesomeDialog(
                  context: context,
                  title: 'Info',
                  desc: "Information",
                  animType: AnimType.scale,
                  btnOkOnPress:(){},

                ).show();
              }, child: Text("Info")),
            ],
          ),
        ),
      ),
    );
  }
}
