import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class NotesScreenSharedPreference extends StatefulWidget {
  @override
  State<NotesScreenSharedPreference> createState() =>
      _NotesScreenSharedPreferenceState();
}

class _NotesScreenSharedPreferenceState
    extends State<NotesScreenSharedPreference> {
  var allNots;

  void initState() {
    super.initState();
    getnotsValues();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        centerTitle: true,
        title: Text(
          "All Notes",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w900, fontSize: 20),
        ),
      ),
      body: Center(
        child: allNots == null
            ? Text(
                "No Any Nots",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              )
            : Text(
                allNots,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              ),
      ),
    );
  }

  void getnotsValues() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    allNots = preferences.getString('notesData');
    setState(() {});
  }
}
