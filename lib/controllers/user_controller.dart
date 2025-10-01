import 'package:to_do_list/database/db.dart';
import 'package:to_do_list/models/user.dart';

class UserController {

  static void create(User user){
    DB.userBox.add(
      user
    );
  }


}