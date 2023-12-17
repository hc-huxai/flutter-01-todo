import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];

  // reference the box
  final _myBox = Hive.box('myBox');

  // run this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Make Tutorials", false],
      ["Do Exercise", false],
    ];
  }

  // load data from db
  void loadData () {
    toDoList = _myBox.get("TODOLIST");
  }

  // update db
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}