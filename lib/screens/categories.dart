import 'package:alura_flutter_clean_architecture/screens/components/category.dart';
import 'package:alura_flutter_clean_architecture/screens/favorites.dart';
import 'package:alura_flutter_clean_architecture/utils/consts/categories.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Escolha uma categoria"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Favorites(),
                    ));
              },
              icon: const Icon(Icons.bookmark),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(17.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 193,
            ),
            children:
                categories.keys.map((e) => Category(category: e)).toList(),
          ),
        ),
      ),
    );
  }
}
