import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';


dynamic database;

class Employee{

  final int empId;
  final String name;
  final double sal;

  Employee({
    required this.empId,
    required this.name,
    required this.sal
  });


Map<String,dynamic> employeeMap(){
  return {
    'empId': empId,
    'name':name,
    'sal':sal,
  };
}
}
Future<void> inserrtEmployeeData(Employee emp) async{
  final localDB =await database;

  localDB.insert('Employee',
  emp.employeeMap(),
  conflictAlgorithm:ConflictAlgorithm.replace,
  );
}

Future<List<Map<String,dynamic>>> getEmployeeData() async{
  final localDb=await database;

  List<Map<String,dynamic>>  mapEntry=await localDb.query("Employee");

  return mapEntry;
}

Future<void> deleteEmpData(Employee emp) async{
  final localDB =await database;

  localDB.delete('Employee',
  where:"empId=?",
  whereArgs:[emp.empId]
  );
}

void main() async{
  runApp(const MainApp());
  database = openDatabase(
     join(await getDatabasesPath(), "employeeDB.db"),
     version: 1,
     onCreate: (db, version) {
          db.execute('''CREATE TABLE Employee(
                empId INT PRIMARY KEY,
                name TEXT,
                sal REAL
                )''');
         }, 
    );
    Employee emp1 = Employee(
       empId: 1010,
       name: "Kanha",
       sal: 1.5,
    );
    Employee emp2 = Employee(
       empId: 015,
       name: "Rahul",
       sal: 1.7,
    );

    await inserrtEmployeeData(emp1);
    await inserrtEmployeeData(emp2);

    List<Map<String,dynamic>> retVal =await getEmployeeData();

    for(int i=0;i<retVal.length;i++){
      print(retVal[i]);
    }

    await deleteEmpData(emp1);
    print("After Delete");

    retVal =await getEmployeeData();

     for(int i=0;i<retVal.length;i++){
      print(retVal[i]);
    }

     Employee emp3 = Employee(
       empId: 015,
       name: "Rahul",
       sal: 1.7,
    );  

    await inserrtEmployeeData(emp3);
    print("Inserted new Data");

     retVal =await getEmployeeData();

     for(int i=0;i<retVal.length;i++){
      print(retVal[i]);
    }


}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
