import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget{

  const MealDetailsScreen({super.key,required this.meal,required this.onToggleFavorite});
  final Meal meal;

  final void Function(Meal meal) onToggleFavorite;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
        actions: [
          IconButton(onPressed: (){
            onToggleFavorite(meal);
          }, icon: const Icon(Icons.star)),
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