import 'package:flutter/material.dart';

class SnackbarWidget extends StatefulWidget {
  const SnackbarWidget({Key? key}) : super(key: key);

  @override
  State<SnackbarWidget> createState() => _SnackbarWidgetState();
}

class _SnackbarWidgetState extends State<SnackbarWidget> {

  final _messangerKey = GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messangerKey,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Snackbar"),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text("Show Snackbar"),
            onPressed: () {
              final message = SnackBar(
                content: Text("This is Snackbar"),
                action: SnackBarAction(
                  label: "Done",
                  onPressed: () {},
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(message);
            },
          ),
        ),
      ),
    );
  }
}
