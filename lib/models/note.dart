import 'dart:ui';

import 'package:hive/hive.dart';
import 'package:to_do_list/database/db.dart';
part 'note.g.dart';

@HiveType(typeId: 1)

class Note extends HiveObject{
  @HiveField(0)
  String title;
  @HiveField(1)
  String content;
  @HiveField(2)
  int color;
  @HiveField(3)
  int? userKey;


  Note({
    required this.title,
    required this.content,
    required this.color,
    this.userKey,
  });


  factory Note.
  fromUI({
   required String title,
   required String content,
   required Color color,
   required int? userKey,
  }) {
    return Note(
    title: title,
    content: content,
    color: color.value, // convertimos Color a int
    userKey: userKey,
    );
  }

  Color get flutterColor => Color(color);


  



}