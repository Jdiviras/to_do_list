import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:to_do_list/models/note.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Note> notes = [
  Note(
    title: "Buenos días",
    content:
        "Et consectetur proident consectetur laboris culpa. Culpa aliqua consectetur Lorem adipisicing ipsum labore anim nostrud cillum proident cupidatat. Deserunt nostrud non sunt nostrud. Minim cillum ut officia deserunt ut adipisicing nulla laborum tempor.",
  ),
  Note(
    title: "Bla bla bla bla bla bla bla",
    content: "content",
    color: Colors.red,
  ),

  Note(
    title: "Buenos días",
    content:
        "Et consectetur proident consectetur laboris culpa. Culpa aliqua consectetur Lorem adipisicing ipsum labore anim nostrud cillum proident cupidatat. Deserunt nostrud non sunt nostrud. Minim cillum ut officia deserunt ut adipisicing nulla laborum tempor.",
  ),
  Note(
    title: "Bla bla bla bla bla bla bla",
    content: "content",
    color: Colors.red,
  ),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE3F2FD),
      appBar: AppBar(title: Text('Notes'), backgroundColor: Colors.grey[100]),
      body: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        itemCount: notes.length,
        itemBuilder: (context, index) {
          final note = notes[index];
          return Card(
            color: note.color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    note.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 4),
                  Text(
                    note.content,
                    maxLines: 5,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
