import 'package:to_do_list/controllers/user_controller.dart';
import 'package:to_do_list/models/user.dart';

class UserSeeder {

  
  static Future<void> seeder() async{
    User jordi = User(username: "jdiviras",email: "jdiviras@gmail.com",password: "pass");
    UserController.create(jordi);
  }

}