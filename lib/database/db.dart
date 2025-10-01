import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/database/note_seeder.dart';
import 'package:to_do_list/database/user_seeder.dart';
import 'package:to_do_list/models/note.dart';
import 'package:to_do_list/models/user.dart';

class DB {
  static late Box<Note> noteBox;
  static late Box<User> userBox;

  static Future<void> initDB({bool reset = false}) async {
    await Hive.initFlutter();

    Hive.registerAdapter(NoteAdapter());
    Hive.registerAdapter(UserAdapter());

    if (reset) {
      // Borrar bases antes de abrir
      await Hive.deleteBoxFromDisk('users');
      await Hive.deleteBoxFromDisk('notes');
    }

    // Abrir las boxes
    userBox = await Hive.openBox<User>('users');
    noteBox = await Hive.openBox<Note>('notes');

    // Llamar al seeder solo si está vacío
    await Seed();
  }

  static Future<void> Seed() async {
    await UserSeeder.seeder();
    await NoteSeeder.seeder();
  }
}