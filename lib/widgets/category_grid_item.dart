// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/main.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meals.dart';

class CategoryGridItem extends StatelessWidget{
  const CategoryGridItem({super.key , required this.category,required this.availableMeals});
  // const CategoryGridItem({super.key , required this.category,required this.onToggleFavorite,required this.availableMeals});
  final List<Meal> availableMeals;

  
  // final void Function(Meal meal) onToggleFavorite;


  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(16)),
      onTap: ()=>{
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MealsScreen(title: category.title,meals:availableMeals.where((meal)=>(meal.categories.contains(category.id))).toList(),)),
  )

      },
      child:
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius:const  BorderRadius.all(Radius.circular(16)),
            gradient: LinearGradient(colors: [
              category.color.withOpacity(0.55),
        
              category.color.withOpacity(0.9),
        
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)
          ),
          child: Text(category.title, style:Theme.of(context).textTheme.titleMedium!.copyWith(
            color: Theme.of(context).colorScheme.onSurface,
            fontWeight: FontWeight.bold
          
          )),
        ),
    );
    
  }
}