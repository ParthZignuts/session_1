import 'package:flutter/material.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewWidget> createState() =>
      _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  final items = ['item1', 'item2', 'item3', 'item4'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Reorderablelist"),
        ),
        body: ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (newIndex > oldIndex) newIndex--;
                final item = items.removeAt(oldIndex);
                items.insert(newIndex, item);
              });
            },
            children: [
              for (final item in items)
                ListTile(
                  key: ValueKey(item),
                  title: Text(item),
                )
            ],
           ),
      ),
    );
  }
}
