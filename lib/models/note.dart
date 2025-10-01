import 'package:hive/hive.dart';
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

  void createNote(String title, String content, int color){

  }


}