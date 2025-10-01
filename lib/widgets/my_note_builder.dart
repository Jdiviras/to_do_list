import 'package:flutter/material.dart';

class MyNoteBuilder extends StatefulWidget {
  const MyNoteBuilder({super.key});

  @override
  State<MyNoteBuilder> createState() => _MyNoteBuilderState();
}

class _MyNoteBuilderState extends State<MyNoteBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration:
           InputDecoration(
            hintText: "Title..",
           ),
          ),
        ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Reprehenderit officia tempor non in mollit consectetur sunt aliquip pariatur labore tempor cupidatat aliqua. Esse laboris eu cillum reprehenderit velit cupidatat ad est nostrud et tempor consectetur. Nisi sint sint mollit culpa.")
        ],
      ),  
    );
  }
}