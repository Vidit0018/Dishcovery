import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/providers/favourites_provider.dart';
import 'package:meals_app/providers/filters_provider.dart';
import 'package:meals_app/providers/meals_provider.dart';
import 'package:meals_app/screens/categories.dart';
import 'package:meals_app/screens/filters.dart';
import 'package:meals_app/screens/meals.dart';
import 'package:meals_app/widgets/main_drawer.dart';
const kInitialFilters ={
    Filter.glutenFree:false,
    Filter.lactoseFree:false,
    Filter.vegetarian:false,
    Filter.vegan:false,
   };
class TabsScreen extends ConsumerStatefulWidget {
  const TabsScreen({super.key});
  @override
  ConsumerState<TabsScreen> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends ConsumerState<TabsScreen> {
  int _selectedPageIndex = 0;
  // final List<Meal> _favoriteMeals =[];
  //  Map<Filter,bool> _selectedFilters=kInitialFilters;


  // void _toggleMealFavoriteStatus(Meal meal){
  //   final isExisting = _favoriteMeals.contains(meal);
  //   if(isExisting){
  //     setState(() {
        
  //     _favoriteMeals.remove(meal);
  //     _showInfoMessage('Meal removed from favorite');
  //     });
  //   }else{
  //     setState(() {
        
  //     _favoriteMeals.add(meal);
  //     _showInfoMessage('Meal marked as favorite');
  //     });
  //   }
  // }
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  void _setScreen(String indentifier)async{

    Navigator.of(context).pop();
    if(indentifier == 'filters'){
      await Navigator.push(context, MaterialPageRoute(builder: (ctx)=> const FiltersScreen()));
    // final result  = await  Navigator.push<Map<Filter,bool>>(context, MaterialPageRoute(builder: (ctx)=> FiltersScreen()));
    // setState(() {
      
    // _selectedFilters=result??kInitialFilters;
    // });
    }
  }

  @override
  Widget build(BuildContext context) {
    // re executes when data in provider changes
    final meals = ref.watch(mealsProvider);
    final activeFilters = ref.watch(filtersProvider);
    final availablemeals = ref.watch(filteredMealsProvider);
    Widget activePage =  CategoriesScreen(availableMeals: availablemeals,);
    var activepageTitle = 'Categories';
    final favoriteMeals = ref.watch(favoriteMealsProvider);
    if (_selectedPageIndex == 1) {
      activePage = MealsScreen( meals: favoriteMeals,);
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
