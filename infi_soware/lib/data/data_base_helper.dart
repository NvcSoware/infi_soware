import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;
  factory DatabaseHelper() => _instance;
  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'user_database.db');
    return await openDatabase(path, version: 1, onCreate: _createDb);
  }

  Future<void> _createDb(Database db, int version) async {
    await db.execute('''
    CREATE TABLE user_info(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
    )''');
  }

  Future<bool> nameExists() async {
    final db = await database;
    var result = await db.query('user_info', limit: 1);
    return result.isNotEmpty;
  }

  Future<void> saveName(String name) async {
    final db = await database;
    await db.insert("user_info", {'name': name});
  }

  Future<void> saveUserInfo(Map<String, dynamic> userinfo) async {
    final db = await database;
    await db.insert('user_info', userinfo,
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<String?> getName() async {
    final db = await database;
    var result = await db.query('user_info', limit: 1);
    if (result.isNotEmpty) {
      return result.first['name'] as String?;
    }
    return null;
  }

  Future<Map<String, dynamic>?> getUserInfo() async {
    final db = await database;
    var result = await db.query('user_info', limit: 1);
    if (result.isNotEmpty) {
      return result.first;
    }
    return null;
  }

  Future<String?> getNameUrl() async {
    final userInfo = await getUserInfo();
    return userInfo?['name'] as String?;
  }
}
