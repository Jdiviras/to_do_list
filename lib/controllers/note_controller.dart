import 'dart:ui';
import 'package:to_do_list/database/db.dart';
import 'package:to_do_list/models/note.dart';

class NoteController {


  static void create(String title, String content, Color color, int? userKey) {
    final newNote = Note.fromUI(
      title: title,
      content: content,
      color: color,
      userKey: userKey,
    );
    DB.noteBox.add(newNote);
  }

  List<Note> getNoteSForUser(int userId){
  return DB.noteBox.values.where((note) => note.userKey == userId).toList();  
  }

  static List<Note> getNotes(){
    return DB.noteBox.values.toList();
  }
}