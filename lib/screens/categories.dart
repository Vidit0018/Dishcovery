
import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatefulWidget{

  const CategoriesScreen({super.key,required this.availableMeals});
  // const CategoriesScreen({super.key,required this.onToggleFavorite,required this.availableMeals});
  // final void Function(Meal meal) onToggleFavorite;
  final List <Meal> availableMeals;

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    
    );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return
    //  Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Pick your Category'),
    //   ),
    //   body:
    AnimatedBuilder(animation: _animationController,
    child: GridView(
        padding: EdgeInsets.all(16),
        gridDelegate: const  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio:3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20  ) ,
        children: [
          for(final category in availableCategories)
            CategoryGridItem(category: category,availableMeals: widget.availableMeals,)
        ]),
     builder: (context,child )=> Padding(child: child,padding: EdgeInsets.only(top: 100 -_animationController.value*100))
       
    );
  }
}