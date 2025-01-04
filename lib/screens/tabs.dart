import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedPageIndex = 0;
  final List<Meal> _favoriteMeals =[];

  void _showInfoMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  void _toggleMealFavoriteStatus(Meal meal){
    final isExisting = _favoriteMeals.contains(meal);
    if(isExisting){
      setState(() {
        
      _favoriteMeals.remove(meal);
      _showInfoMessage('Meal removed from favorite');
      });
    }else{
      setState(() {
        
      _favoriteMeals.add(meal);
      _showInfoMessage('Meal marked as favorite');
      });
    }
  }
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String indentifier){
    if(indentifier == 'filters'){

    }else{
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage =  CategoriesScreen(onToggleFavorite: _toggleMealFavoriteStatus,);
    var activepageTitle = 'Categories';

    if (_selectedPageIndex == 1) {
      activePage = MealsScreen( meals: _favoriteMeals,onToggleFavorite:_toggleMealFavoriteStatus,);
      activepageTitle = 'Your Favourites';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(activepageTitle),
      ),
      drawer: MainDrawer(onSelectScreen: _setScreen),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(onTap: _selectPage, 
      currentIndex: _selectedPageIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.set_meal), label: 'Categories'),
        BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourites'),
      ]),
    );
  }
}
