import 'package:coach_app/model/alarm_info.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

final String tableAlarm = 'alarm';
final String columnId = 'id';
final String columnTitle = 'title';
final String columnDateTime = 'alarmDateTime';
final String columnPending = 'isPending';
final String columnColorIndex = 'gradientColorIndex';

class AlarmHelper {
  static late Database? _database;
  static late AlarmHelper? _alarmHelper;

  factory AlarmHelper() {
    _alarmHelper = AlarmHelper._();
    return _alarmHelper!;
  }

  AlarmHelper._();


  Future<Database> get database async {
    _database ??= await initializeDatabase();
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    final dir = await getDatabasesPath();
    final path = "${dir}alarm.db";
    print(path);

    final database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          create table $tableAlarm ( 
          $columnId integer primary key autoincrement, 
          $columnTitle text not null,
          $columnDateTime text not null,
          $columnPending integer,
          $columnColorIndex integer)
        ''');
      },
    );
    _database = database;
    return database;
  }

  void insertAlarm(AlarmInfo alarmInfo) async {
    final db = await database;
    final result = await db.insert(tableAlarm, alarmInfo.toMap());
    print('result : $result');
  }

  Future<List<AlarmInfo>> getAlarms() async {
    final List<AlarmInfo> _alarms = [];

    final db = await database;
    final result = await db.query(tableAlarm);
    result.forEach((element) {
      final alarmInfo = AlarmInfo.fromMap(element);
      _alarms.add(alarmInfo);
    });

    return _alarms;
  }

  Future<int> delete(int id) async {
    final db = await database;
    return db.delete(tableAlarm, where: '$columnId = ?', whereArgs: [id]);
  }
}