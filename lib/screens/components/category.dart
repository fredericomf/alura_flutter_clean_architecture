import 'package:alura_flutter_clean_architecture/screens/results.dart';
import 'package:alura_flutter_clean_architecture/utils/consts/categories.dart';
import 'package:flutter/material.dart';

class Category extends StatelessWidget {
const Category({ Key? key, required this.category }) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context){
    return Column(children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Results(category: category)));
          },
          child: Ink(
            child: Center(
              child: Image.asset("$imagePath$category.png"),
            ),
          ),
        ),
        Text(categories[category]!),
    ],);
  }
}