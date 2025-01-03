
import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget{

  const CategoriesScreen({super.key,required this.onToggleFavorite});
  final void Function(Meal meal) onToggleFavorite;

  @override
  Widget build(BuildContext context) {
    return
    //  Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Pick your Category'),
    //   ),
    //   body:
       GridView(
        padding: EdgeInsets.all(16),
        gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20  ) ,
        children: [
          for(final category in availableCategories)
            CategoryGridItem(category: category,onToggleFavorite: onToggleFavorite,)
        ]);
    // );
  }
}