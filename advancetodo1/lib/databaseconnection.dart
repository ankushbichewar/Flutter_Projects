import 'package:path/path.dart ';
import 'package:sqflite/sqflite.dart';
 
Future<Database> initializeDatabase() async {
  
    Future<Database> database = openDatabase(
    join(await getDatabasesPath(), "todoDB3.db"),
     version: 1,
     onCreate: (db, version) {
          db.execute('''CREATE TABLE task(
                taskId INTEGER PRIMARY KEY AUTOINCREMENT,
                title TEXT,
                descreption TEXT,
                date TEXT
                )''');
         }, 
    );
    return database;
}
class UserInfo {

  dynamic database;

  static UserInfo obj =  UserInfo();
  static UserInfo getObject(){
    return obj;
  }

  Future<Database> getDatabase()async{
   return   await initializeDatabase();
  }

   Future<void> inserrtTaskData(var obj) async{
   // await obj.getDatabase();
  final localDB = await getDatabase();

  localDB.insert('task',
  obj.todoMap(),
  conflictAlgorithm:ConflictAlgorithm.replace,
  );
  await gettask();
}

Future<List<Map<String,dynamic>>> gettask() async{
  final localDb= await getDatabase();

  List<Map<String,dynamic>>  mapEntry=await localDb.query("task");

  return mapEntry;

  
}

Future<void> deletetask(var obj) async{
  final localDB =await database;

  localDB.delete('task',
  where:"TaskId=?",
  whereArgs:[obj.id]
  );
}

}


