import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  //reference our box
  final _naiveBox = Hive.box('naivebox');
  // run this method if this is the 1st time ever opening this app
  void createInitialData(){
    todoList = [
      ["Create List of Great Works", false],
      ["Add Task For Room # 3", false],
    ];
  }
  //load the data from database
  void loadData(){
    todoList = _naiveBox.get("TODOLIST");
  }
  // update the database
  void updateDatabase(){
    _naiveBox.put("TODOLIST", todoList);
  }
}