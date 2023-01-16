import 'package:hive/hive.dart';

class ToDoDatabase {
  // List toDoList
  List todoList = [];

  // refernce our box
  final _myBox = Hive.box('mybox');
  // run this method if this is first time opening the app
  void createInitialData() {
    todoList = [
      ["Make tutorial", false],
      ["Do exercise", false],
    ];
  }

  // load the data from database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put("TODOLIST", todoList);
  }
}
