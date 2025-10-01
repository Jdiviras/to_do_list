import 'package:flutter/material.dart';
import 'package:to_do_list/database/db.dart';
import 'package:to_do_list/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Si quieres resetear la DB en desarrollo
  await DB.initDB(reset: true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To do list',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}
