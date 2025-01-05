import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/meal_details.dart';
import 'package:meals_app/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget{
  const MealsScreen({super.key ,  this.title,required this.meals,});
  // const MealsScreen({super.key ,  this.title,required this.meals,required this.onToggleFavorite});

  final String? title;
  final List<Meal>meals;
  
  // final void Function(Meal meal) onToggleFavorite;


  void onSelectMeal(Meal meal , BuildContext context){
    Navigator.push(context, MaterialPageRoute(builder:(ctx)=>MealDetailsScreen(meal: meal,) ));
  }


  @override
  Widget build(BuildContext context) {
    Widget content= ListView.builder(
      padding:EdgeInsets.all(4),
      itemCount: meals.length,
      itemBuilder: (ctx,index)=>Column(
        children: [
           Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0,),
      child: MealItem(meal: meals[index],onSelectMeal: onSelectMeal,), // Ensure this contains the Card
    ),
          const SizedBox(height: 16,)
        ],
      ));
    if(meals.isEmpty){
      content = Center(child: Column(mainAxisSize: MainAxisSize.min,
      children: [Text('Nothing here',style: TextStyle(color: Colors.white),),const SizedBox(height: 16,),Text('Try Slecting a Different Category',style: TextStyle(color: Colors.white))],),);
    }

    if(title == null){
      return content;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),
      ),
      body: content
    );
  }
}