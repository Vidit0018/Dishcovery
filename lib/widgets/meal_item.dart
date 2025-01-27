import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/meal_item_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.meal,required this.onSelectMeal});
  final Meal meal;
  final void Function (Meal meal,BuildContext context)onSelectMeal;

  String get complexityText{
    return meal.complexity.name[0].toUpperCase() + meal.complexity.name.substring(1);
  }
  String get affordabilityText{
    return meal.affordability.name[0].toUpperCase() + meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
    borderRadius: BorderRadius.circular(16.0),
      child:
        Card(
          shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0), // Adjust the radius as needed
              ),
           elevation: 4,
          child: InkWell(
            borderRadius:BorderRadius.circular(16),
            onTap: () {
              onSelectMeal(meal,context);
            },
            child: Stack(
              children: [
ClipRRect(
  borderRadius: BorderRadius.circular(10), // Optional: Adds rounded corners
  child: SizedBox(
    height: 250, // Fixed height
    width: double.infinity, // Makes it occupy the full width of its parent
    child: FadeInImage(
      fit: BoxFit.cover, // Ensures the image covers the entire area
      placeholder: MemoryImage(kTransparentImage),
      image: NetworkImage(meal.imageUrl),
    ),
  ),
),

                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    color: Colors.black54,
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                    child: Column(
                      children: [
                        Text(
                          meal.title,
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style:
                              TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center ,
                          children: [

                          MealItemTrait(icon: Icons.schedule, label: '${meal.duration} min'),
                          const SizedBox(width: 8,),
                          MealItemTrait(icon: Icons.work, label: '$complexityText '),
                          const SizedBox(width: 8,),
                          MealItemTrait(icon: Icons.attach_money, label: '$affordabilityText '),
                        ],)
                      ],
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      
    );
  }
}
