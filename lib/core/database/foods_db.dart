
import 'package:restofood_sqlite/core/database/database.dart';
import 'package:sqflite/sqflite.dart';

class FoodsDB {
  
  //Membuat instance database helper
  DatabaseHelper helper = new DatabaseHelper();

  //Fungsi mendapatkan makanan
  Future getAll() async {
    Database db = await helper.database;
    
    //Mengambil semua data dari table foods
    var result = await db.query("foods");
    return result;
  }
}