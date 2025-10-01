import 'package:flutter/material.dart';
import 'package:to_do_list/database/db.dart';import 'package:to_do_list/models/note.dart';

class NoteSeeder {


  static Future<void> seeder() async {
        if (DB.noteBox.isNotEmpty) return;
    // Supongamos que tienes un usuario creado con key 0
    final userKey = 0;

    final notes = [
      Note.fromUI(
        title: "Hello World",
        content: "Mollit aliqua sunt aliquip consequat eiusmod est veniam incididunt adipisicing voluptate consectetur in et ipsum. Et aliqua labore aliqua anim dolore. Esse adipisicing excepteur veniam laboris tempor labore Lorem esse quis. Nisi consequat quis tempor sit laborum do commodo ex velit Lorem irure deserunt amet sunt. Laborum voluptate ea consectetur exercitation esse do. Officia dolore tempor eu sunt pariatur Lorem proident exercitation exercitation minim anim velit.",
        color: Colors.yellow,
        userKey: userKey,
      ),
      Note.fromUI(
        title: "Segunda Nota",
        content: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
        color: Colors.green,
        userKey: userKey,
      ),
      Note.fromUI(
        title: "Tercera Nota",
        content: "Contenido de ejemplo para testing.",
        color: Colors.blue,
        userKey: userKey,
      ),
    ];

    for (var note in notes) {
    await DB.noteBox.add(note);    
    }
  }
}

