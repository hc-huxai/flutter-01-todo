import 'package:flutter/material.dart';
import 'package:myapp/pages/home_page.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {

  // init Hive
  await Hive.initFlutter();

  // open a box | Don't remove this variable
  // ignore: unused_local_variable
  var box = await Hive.openBox('mybox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}