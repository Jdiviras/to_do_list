import 'package:hive/hive.dart';
import 'package:to_do_list/database/db.dart';
import 'package:to_do_list/models/note.dart';
part 'user.g.dart';

@HiveType(typeId: 0)
class User extends HiveObject{

  @HiveField(0)
  String username;
  @HiveField(1)
  String email;
  @HiveField(2)
  String password;
  @HiveField(3)
  List<Note> notes;

  User({
    required this.username,
    required this.email,
    required this.password,
    this.notes = const[],
  });


  static void Create(User user){
    userBox.add(
      User(email: "jdiviras@gmail.com", username: "Jdiviras", password: "Password")
    );


  }

  static void Seeder(){
    User jordi = User(username: "jdiviras",email: "jdiviras@gmail.com",password: "pass");
    Create(jordi);

  }


}