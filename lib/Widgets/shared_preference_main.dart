import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:session_1/Widgets/notes_screen_sharedpreference.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceMain extends StatefulWidget {
  const SharedPreferenceMain({Key? key}) : super(key: key);

  @override
  State<SharedPreferenceMain> createState() => _SharedPreferenceMainState();
}

class _SharedPreferenceMainState extends State<SharedPreferenceMain> {
  TextEditingController textController = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lime,
        title: Text(
          "Nots ",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textController,
            keyboardType: TextInputType.text,
            autocorrect: true,
            decoration: InputDecoration(
                labelText: "Enter Notes",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w900),
                hintText: "Enter Some nots here..",
                icon: Icon(Icons.note_add),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
            setNotesData(textController.text.toString());
          }, child: Text("Save")),
          SizedBox(height: 20),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lime,
                foregroundColor: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotesScreenSharedPreference()));
              },
              child: Text("View nots")),
        ],
      ),
    );
  }

  Future<void> setNotesData(notsvalue) async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('notesData', notsvalue) ;

  }
}
