import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/models/note.dart';
import 'package:to_do_list/models/user.dart';

late final Box<Note> noteBox;
late final Box<User> userBox;
// ignore: camel_case_types
class db{

  static void initDB() async{
  await Hive.initFlutter();
  Hive.registerAdapter(NoteAdapter());
  Hive.registerAdapter(UserAdapter());
  if (userBox.isOpen){
    userBox.deleteFromDisk();
  }
  if(noteBox.isOpen){
    noteBox.deleteFromDisk();
  }

  userBox = await Hive.openBox<User>('users');
  noteBox = await Hive.openBox<Note>('notes');
  Seed();
  }
  

  static void Seed(){
    User.Seeder();
  }
}