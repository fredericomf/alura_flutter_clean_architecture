import 'package:alura_flutter_clean_architecture/controllers/api_controller.dart';
import 'package:alura_flutter_clean_architecture/screens/components/entry_card.dart';
import 'package:alura_flutter_clean_architecture/utils/consts/categories.dart';
import 'package:flutter/material.dart';

class Results extends StatelessWidget {
Results({ Key? key, required this.category }) : super(key: key);
  final String category;

  final ApiController apiController = ApiController();

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(categories[category]!),
        ),
        body: FutureBuilder(
          future: apiController.getEntriesByCategory(category: category),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
                break;
              
              case ConnectionState.none:
                break;

              case ConnectionState.done:
                if(snapshot.hasData) {
                  return ListView.builder(itemBuilder: (context, index) => EntryCard(entry: snapshot.data![index]));
                }

              case ConnectionState.waiting:
                return const Center(child: CircularProgressIndicator(),);
              default:
            }
            return Container();
          },
        ),
      ),
    );
  }
}