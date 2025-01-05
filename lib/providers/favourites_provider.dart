import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/models/meal.dart';
class FavoriteMalsNotifier extends StateNotifier<List<Meal>>{
   FavoriteMalsNotifier() : super([]);

   bool toggleMealFavoriteStatus(Meal meal){
    final mealIsFavorite = state.contains(meal);
    if(mealIsFavorite){
      state = state.where((m)=>m.id != meal.id).toList();
      return false ;
    }else{
      state = [...state,meal];
      return true;
    }
   }
}
final favoriteMealsProvider = StateNotifierProvider<FavoriteMalsNotifier,List<Meal>>(
  (ref){
    return FavoriteMalsNotifier();
  }
);
