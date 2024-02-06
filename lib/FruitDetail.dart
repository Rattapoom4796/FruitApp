import 'package:flutter/material.dart';
import 'FruitDataModel.dart';

class FruitDetail extends StatelessWidget {
  final FruitDataModel fruitDataModel;

  const FruitDetail({Key? key, required this.fruitDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.yellow,
        title: Text(fruitDataModel.name),
      ),
      body: Container(
        color: Colors.lightGreenAccent,
        child: Column(
          children: [
            Image.network(fruitDataModel.ImageUrl),SizedBox(height: 10,),
            Text(fruitDataModel.desc,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20  ),)
          ],
        ),
      ),
    );
  }
}