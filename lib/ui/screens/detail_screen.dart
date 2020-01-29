import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:restofood_sqlite/core/models/foods_mdl.dart';
import 'package:restofood_sqlite/core/services/foods_services.dart';
import 'package:restofood_sqlite/ui/screens/update_screen.dart';

class DetailScreen extends StatelessWidget {
  FoodModel foodModel;
  DetailScreen({this.foodModel});

  void deleteFood(BuildContext context) async {
    await FoodsServices.delete(foodModel);
    Fluttertoast.showToast(
      msg: "Berhasil menghapus makanan",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIos: 1,
      backgroundColor: Colors.black87,
      textColor: Colors.white,
      fontSize: 16.0
    );

    Future.delayed(Duration(
      seconds: 1
    ), () {
      Navigator.pushNamedAndRemoveUntil(context, "/home", (Route<dynamic> routes) => false);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(foodModel.title),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => Navigator.push(context, MaterialPageRoute(
                builder: (context) => UpdateScreen(
                  foodModel: foodModel,
                )
              )),
              child: Icon(Icons.edit, color: Colors.white,)
            ),
          ),

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () => deleteFood(context),
              child: Icon(Icons.delete, color: Colors.white,)
            ),
          ),
        ],
      ),
      body: DetailBody(),
    );
  }
}

class DetailBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}