import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/providers/favourites_provider.dart';

class MealDetailsScreen extends ConsumerWidget{

  const MealDetailsScreen({super.key,required this.meal,});
  final Meal meal;

  // final void Function(Meal meal) onToggleFavorite;


  @override
  Widget build(BuildContext context,WidgetRef ref) {

      void _showInfoMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }
  final favoriteMeals = ref.watch(favoriteMealsProvider);
  final isFavorite= favoriteMeals.contains(meal);
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(onPressed: (){
            final wasAdded = ref.read(favoriteMealsProvider.notifier).toggleMealFavoriteStatus(meal);
            // onToggleFavorite(meal);
            if(wasAdded){
              _showInfoMessage('Item added to Favorites');
            }else{
              _showInfoMessage('Item Removed from Favorites');
            }

          }, icon:  Icon(isFavorite? (Icons.star) : (Icons.star_border))),
        ],
      ),
      body:  SingleChildScrollView(
        child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(meal.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,),
              SizedBox(height: 14,),
              Text("Ingredients",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
              ),),
              SizedBox(height: 14,),
              for(final ingredient in meal.ingredients)
                Text(ingredient,
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white
                ) ,),
              SizedBox(height: 14,),
              Text("Steps",style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.bold
              ),),
              Padding(padding: EdgeInsets.all(16),

              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [for(final steps in meal.steps)
                
                Text('⦿ ${steps}',
                style:Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.white
                ) ,)],
              )
              
             ,)
              
              
          
          
            ],
          ),
        
      ),
      
    );
  }

  
}