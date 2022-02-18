import 'package:flutter/material.dart';

class List1 extends StatefulWidget {
  List? user;
  List1({Key? key, this.user}) : super(key: key);

  @override
  State<List1> createState() => _List1State();
}

class _List1State extends State<List1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Expanded(
      child: ListView.builder(
          itemCount: widget.user!.length,
          itemBuilder: (context, int index) {
            return ListTile(
              title: Text(widget.user![index]['name']),
              subtitle: Text(widget.user![index]['house']),
            );
          }),
    ));
  }
}
