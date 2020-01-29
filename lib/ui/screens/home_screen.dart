import 'package:flutter/material.dart';
import 'package:restofood_sqlite/core/models/foods_mdl.dart';
import 'package:restofood_sqlite/core/services/foods_services.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("Restofood"),
        leading: Icon(Icons.fastfood, color: Colors.white,),
      ),
      body: HomeBody(),
    );
  }
}



class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          //Bagian ini untuk itemnya
          Text(
            "Daftar Makanan & Minuman",
            style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 20),
          //Widget daftar makanan
          ListFood()
        ],
      ),
    );
  }
}


class ListFood extends StatefulWidget {
  @override
  _ListFoodState createState() => _ListFoodState();
}

class _ListFoodState extends State<ListFood> {

  //Instance data foods
  List<FoodModel> foods;

  //Function load data
  void loadData() async {
    foods = await FoodsServices.getAll();
  }

  @override
  void initState() {
    super.initState();
    this.loadData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}