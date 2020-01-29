
import 'package:restofood_sqlite/core/database/foods_db.dart';
import 'package:restofood_sqlite/core/models/foods_mdl.dart';

class FoodsServices {

  //Instance foodDatabase
  static FoodsDB _foodsDB;

  //function get all foods
  static Future<List<FoodModel>> getAll() async {
    _foodsDB = new FoodsDB();

    var _result = await _foodsDB.getAll();
    var data = new List<FoodModel>();
    _result.forEach((foods) {
      data.add(FoodModel.fromMap(foods));
    });

    return data;
  }
}