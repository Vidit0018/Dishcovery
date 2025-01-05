import 'package:flutter/material.dart';

import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';

// Constants in Dart should be written in lowerCamelcase.
const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      '4 Tomatoes',
      '1 Tablespoon of Olive Oil',
      '1 Onion',
      '250g Spaghetti',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 Slice White Bread',
      '1 Slice Ham',
      '1 Slice Pineapple',
      '1-2 Slices of Cheese',
      'Butter'
    ],
    steps: [
      'Butter one side of the white bread',
      'Layer ham, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven at 200°C'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      '300g Cattle Hack',
      '1 Tomato',
      '1 Cucumber',
      '1 Onion',
      'Ketchup',
      '2 Burger Buns'
    ],
    steps: [
      'Form 2 patties',
      'Fry the patties for c. 4 minutes on each side',
      'Quickly fry the buns for c. 1 minute on each side',
      'Bruch buns with ketchup',
      'Serve burger with tomato, cucumber and onion'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      '8 Veal Cutlets',
      '4 Eggs',
      '200g Bread Crumbs',
      '100g Flour',
      '300ml Butter',
      '100g Vegetable Oil',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tenderize the veal to about 2–4mm, and salt on both sides.',
      'On a flat plate, stir the eggs briefly with a fork.',
      'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      '200g Smoked Salmon',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Wash and cut salad and herbs',
      'Dice the salmon',
      'Process mustard, vinegar and olive oil into a dessing',
      'Prepare the salad',
      'Add salmon cubes and dressing'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 Sheets of Gelatine',
      '150ml Orange Juice',
      '80g Sugar',
      '300g Yoghurt',
      '200g Cream',
      'Orange Peel',
    ],
    steps: [
      'Dissolve gelatine in pot',
      'Add orange juice and sugar',
      'Take pot off the stove',
      'Add 2 tablespoons of yoghurt',
      'Stir gelatin under remaining yoghurt',
      'Cool everything down in the refrigerator',
      'Whip the cream and lift it under die orange mass',
      'Cool down again for at least 4 hours',
      'Serve with orange peel',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      '1 1/2 Cups all-purpose Flour',
      '3 1/2 Teaspoons Baking Powder',
      '1 Teaspoon Salt',
      '1 Tablespoon White Sugar',
      '1 1/4 cups Milk',
      '1 Egg',
      '3 Tablespoons Butter, melted',
    ],
    steps: [
      'In a large bowl, sift together the flour, baking powder, salt and sugar.',
      'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
      'Heat a lightly oiled griddle or frying pan over medium high heat.',
      'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      '1 Onion',
      '2 Cloves of Garlic',
      '1 Piece of Ginger',
      '4 Tablespoons Almonds',
      '1 Teaspoon Cayenne Pepper',
      '500ml Coconut Milk',
    ],
    steps: [
      'Slice and fry the chicken breast',
      'Process onion, garlic and ginger into paste and sauté everything',
      'Add spices and stir fry',
      'Add chicken breast + 250ml of water and cook everything for 10 minutes',
      'Add coconut milk',
      'Serve with rice'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      '1 Teaspoon melted Butter',
      '2 Tablespoons white Sugar',
      '2 Ounces 70% dark Chocolate, broken into pieces',
      '1 Tablespoon Butter',
      '1 Tablespoon all-purpose Flour',
      '4 1/3 tablespoons cold Milk',
      '1 Pinch Salt',
      '1 Pinch Cayenne Pepper',
      '1 Large Egg Yolk',
      '2 Large Egg Whites',
      '1 Pinch Cream of Tartar',
      '1 Tablespoon white Sugar',
    ],
    steps: [
      'Preheat oven to 190°C. Line a rimmed baking sheet with parchment paper.',
      'Brush bottom and sides of 2 ramekins lightly with 1 teaspoon melted butter; cover bottom and sides right up to the rim.',
      'Add 1 tablespoon white sugar to ramekins. Rotate ramekins until sugar coats all surfaces.',
      'Place chocolate pieces in a metal mixing bowl.',
      'Place bowl over a pan of about 3 cups hot water over low heat.',
      'Melt 1 tablespoon butter in a skillet over medium heat. Sprinkle in flour. Whisk until flour is incorporated into butter and mixture thickens.',
      'Whisk in cold milk until mixture becomes smooth and thickens. Transfer mixture to bowl with melted chocolate.',
      'Add salt and cayenne pepper. Mix together thoroughly. Add egg yolk and mix to combine.',
      'Leave bowl above the hot (not simmering) water to keep chocolate warm while you whip the egg whites.',
      'Place 2 egg whites in a mixing bowl; add cream of tartar. Whisk until mixture begins to thicken and a drizzle from the whisk stays on the surface about 1 second before disappearing into the mix.',
      'Add 1/3 of sugar and whisk in. Whisk in a bit more sugar about 15 seconds.',
      'whisk in the rest of the sugar. Continue whisking until mixture is about as thick as shaving cream and holds soft peaks, 3 to 5 minutes.',
      'Transfer a little less than half of egg whites to chocolate.',
      'Mix until egg whites are thoroughly incorporated into the chocolate.',
      'Add the rest of the egg whites; gently fold into the chocolate with a spatula, lifting from the bottom and folding over.',
      'Stop mixing after the egg white disappears. Divide mixture between 2 prepared ramekins. Place ramekins on prepared baking sheet.',
      'Bake in preheated oven until scuffles are puffed and have risen above the top of the rims, 12 to 15 minutes.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'White and Green Asparagus',
      '30g Pine Nuts',
      '300g Cherry Tomatoes',
      'Salad',
      'Salt, Pepper and Olive Oil'
    ],
    steps: [
      'Wash, peel and cut the asparagus',
      'Cook in salted water',
      'Salt and pepper the asparagus',
      'Roast the pine nuts',
      'Halve the tomatoes',
      'Mix with asparagus, salad and dressing',
      'Serve with Baguette'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),


  // New Italian meals
  Meal(
    id: 'm13',
    categories: ['c1'], // Italian
    title: 'Spaghetti Carbonara',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2015/04/08/13/13/pasta-712664_1280.jpg',
    duration: 25,
    ingredients: [
      '200g Spaghetti',
      '2 Eggs',
      '100g Parmesan Cheese',
      '100g Pancetta',
      'Salt and Pepper'
    ],
    steps: [
      'Cook spaghetti according to package instructions.',
      'Whisk eggs and mix with grated parmesan cheese.',
      'Fry pancetta until crispy.',
      'Mix hot spaghetti with egg mixture and pancetta.',
      'Serve immediately with extra cheese on top.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  Meal(
    id: 'm11',
    categories: ['c8'], // Asian
    title: 'Butter Chicken',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://media.istockphoto.com/id/1479262112/photo/butter-chicken.jpg?s=2048x2048&w=is&k=20&c=MF7fqkqcX_NMql0_zD4HFoo8A088HyeWiK2M1caQrVk=',
    duration: 50,
    ingredients: [
      '500g Chicken',
      '2 Cups Tomato Puree',
      '1 Cup Cream',
      '3 Tablespoons Butter',
      '2 Onions',
      '2 Teaspoons Garam Masala',
      'Salt and Pepper',
      'Coriander Leaves'
    ],
    steps: [
      'Marinate the chicken with spices and yogurt for 2 hours.',
      'Sauté onions in butter until golden.',
      'Add tomato puree and spices, cook until thickened.',
      'Add marinated chicken and cook until tender.',
      'Stir in cream and simmer for 10 minutes.',
      'Garnish with coriander leaves and serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: ['c8'], // Asian
    title: 'Vegetable Biryani',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2022/03/02/12/43/dish-7043103_1280.jpg',
    duration: 60,
    ingredients: [
      '2 Cups Basmati Rice',
      '1 Cup Mixed Vegetables',
      '1 Onion',
      '1 Tomato',
      '2 Teaspoons Biryani Masala',
      '1/2 Cup Yogurt',
      '2 Tablespoons Ghee',
      'Saffron and Mint Leaves'
    ],
    steps: [
      'Wash and soak rice for 30 minutes.',
      'Sauté onions and tomatoes with biryani masala.',
      'Add vegetables and cook until tender.',
      'Layer rice and vegetable mixture in a pot.',
      'Add saffron-infused milk and mint leaves.',
      'Cook on low heat for 20 minutes.',
      'Serve hot with raita.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // New Italian cuisine items
  Meal(
    id: 'm13',
    categories: ['c1'], // Italian
    title: 'Margherita Pizza',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2024/09/19/10/26/ai-generated-9058360_1280.jpg',
    duration: 30,
    ingredients: [
      '1 Pizza Base',
      '1/2 Cup Tomato Sauce',
      '200g Mozzarella Cheese',
      'Fresh Basil Leaves',
      'Olive Oil',
      'Salt'
    ],
    steps: [
      'Spread tomato sauce on the pizza base.',
      'Top with mozzarella slices and basil leaves.',
      'Drizzle with olive oil and sprinkle salt.',
      'Bake in a preheated oven at 220°C for 10 minutes.',
      'Serve immediately.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: ['c1'], // Italian
    title: 'Lasagna',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2022/11/08/05/34/lasagna-7577748_1280.jpg',
    duration: 90,
    ingredients: [
      '12 Lasagna Sheets',
      '500g Minced Meat',
      '1 Cup Tomato Sauce',
      '1 Cup Ricotta Cheese',
      '1 Cup Mozzarella Cheese',
      '1/2 Cup Parmesan Cheese',
      'Salt and Pepper'
    ],
    steps: [
      'Cook lasagna sheets according to package instructions.',
      'Sauté minced meat and mix with tomato sauce.',
      'Layer lasagna sheets, meat sauce, and cheeses in a baking dish.',
      'Repeat layers and top with mozzarella and parmesan.',
      'Bake in a preheated oven at 180°C for 45 minutes.',
      'Serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),


  // New Quick & Easy meals
  Meal(
    id: 'm14',
    categories: ['c2'], // Quick & Easy
    title: 'Chicken Stir Fry',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2023/11/22/21/11/ai-generated-8406464_1280.png',
    duration: 20,
    ingredients: [
      '300g Chicken Breast',
      '2 Bell Peppers',
      '1 Onion',
      '2 Tablespoons Soy Sauce',
      '1 Teaspoon Cornstarch',
      'Salt and Pepper'
    ],
    steps: [
      'Slice chicken and vegetables.',
      'Stir-fry chicken in a hot pan until cooked.',
      'Add vegetables and stir-fry until tender.',
      'Mix soy sauce and cornstarch with water, then pour into the pan.',
      'Cook until the sauce thickens and serve.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // New Hamburgers
  Meal(
    id: 'm15',
    categories: ['c3'], // Hamburgers
    title: 'Cheeseburger',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2024/10/10/09/59/ai-generated-9110470_960_720.png',
    duration: 15,
    ingredients: [
      '1 Burger Bun',
      '1 Beef Patty',
      '1 Slice Cheddar Cheese',
      'Lettuce',
      'Tomato',
      'Ketchup and Mustard'
    ],
    steps: [
      'Grill the beef patty until cooked.',
      'Toast the burger bun.',
      'Assemble the burger with patty, cheese, lettuce, tomato, and sauces.',
      'Serve immediately.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),

  // New German meals
  Meal(
    id: 'm16',
    categories: ['c4'], // German
    title: 'Schnitzel',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2024/02/15/09/30/schnitzel-8575032_960_720.png',
    duration: 30,
    ingredients: [
      '4 Pork Cutlets',
      '2 Eggs',
      '1 Cup Breadcrumbs',
      '1/2 Cup Flour',
      'Salt and Pepper',
      'Vegetable Oil'
    ],
    steps: [
      'Flatten pork cutlets with a meat tenderizer.',
      'Season with salt and pepper.',
      'Dredge in flour, dip in beaten eggs, and coat with breadcrumbs.',
      'Fry in hot oil until golden and crispy.',
      'Serve with lemon wedges.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // New Light & Lovely meals
  Meal(
    id: 'm17',
    categories: ['c5'], // Light & Lovely
    title: 'Greek Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2024/02/02/12/34/lettuce-8548078_1280.jpg',
    duration: 15,
    ingredients: [
      '1 Cucumber',
      '2 Tomatoes',
      '1 Red Onion',
      '100g Feta Cheese',
      'Olives',
      'Olive Oil',
      'Salt and Oregano'
    ],
    steps: [
      'Chop vegetables and feta cheese.',
      'Mix in a bowl with olives.',
      'Drizzle with olive oil and season with salt and oregano.',
      'Serve chilled.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // New Exotic meals
  Meal(
    id: 'm18',
    categories: ['c6'], // Exotic
    title: 'Sushi',
    affordability: Affordability.luxurious,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2024/10/21/11/45/ai-generated-9137114_1280.jpg',
    duration: 50,
    ingredients: [
      '1 Cup Sushi Rice',
      'Nori Sheets',
      '200g Fresh Salmon',
      '1 Cucumber',
      'Soy Sauce',
      'Wasabi'
    ],
    steps: [
      'Cook sushi rice and season with vinegar.',
      'Lay nori sheet on a bamboo mat.',
      'Spread rice over nori and place salmon and cucumber.',
      'Roll tightly and slice into pieces.',
      'Serve with soy sauce and wasabi.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),

  // New Breakfast meals
  Meal(
    id: 'm19',
    categories: ['c7'], // Breakfast
    title: 'Strawberry Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/07/08/56/pancakes-2291908_1280.jpg',
    duration: 20,
    ingredients: [
      '1 Cup Flour',
      '1 Egg',
      '1 Cup Milk',
      '2 Tablespoons Sugar',
      '1 Teaspoon Baking Powder',
      'Butter',
      'Strawberies'
    ],
    steps: [
      'Mix all ingredients into a smooth batter.',
      'Heat a pan and add butter.',
      'Pour batter to form pancakes and cook until golden on both sides.',
      'Serve with Strawberies.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // New French meals
  Meal(
    id: 'm20',
    categories: ['c9'], // French
    title: 'Crepes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2021/11/09/01/48/crepes-6780482_960_720.png',
    duration: 20,
    ingredients: [
      '1 Cup Flour',
      '2 Eggs',
      '1 Cup Milk',
      '2 Tablespoons Butter',
      '1 Tablespoon Sugar'
    ],
    steps: [
      'Mix all ingredients into a thin batter.',
      'Heat a non-stick pan and pour batter to form a thin layer.',
      'Cook until golden and flip to cook the other side.',
      'Serve with jam, chocolate, or fruits.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),

  // New Summer meals
  Meal(
    id: 'm21',
    categories: ['c10'], // Summer
    title: 'Mango Smoothie',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://media.istockphoto.com/id/904617420/photo/fresh-mango-smoothie-in-the-glass.jpg?s=2048x2048&w=is&k=20&c=IHkW6jyXwJN5l3krQ39fOH8mW1guJMPjB5oJgXq2BGY=',
    duration: 10,
    ingredients: [
      '2 Ripe Mangoes',
      '1 Cup Yogurt',
      '1/2 Cup Milk',
      '2 Tablespoons Honey'
    ],
    steps: [
      'Peel and chop mangoes.',
      'Blend mangoes, yogurt, milk, and honey until smooth.',
      'Serve chilled in glasses.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),


  Meal(
  id: 'm22',
  categories: ['c8'],
  title: 'Pad Thai',
  affordability: Affordability.affordable,
  complexity: Complexity.challenging,
  imageUrl: 'https://cdn.pixabay.com/photo/2019/12/19/02/49/pad-thai-4705276_1280.jpg',
  duration: 30,
  ingredients: [
    '200g Rice Noodles',
    '200g Shrimp (optional)',
    '2 Eggs',
    '100g Bean Sprouts',
    '3 tbsp Tamarind Paste',
    '2 tbsp Fish Sauce',
    '1 tbsp Sugar',
    '1 Lime',
    'Crushed Peanuts',
    'Green Onions',
    'Garlic',
    'Oil'
  ],
  steps: [
    'Soak rice noodles in warm water until soft, then drain.',
    'In a wok, heat oil and sauté garlic.',
    'Add shrimp (if using) and cook until pink.',
    'Push to one side, scramble eggs, and mix.',
    'Add tamarind paste, fish sauce, and sugar; stir well.',
    'Toss in noodles and bean sprouts.',
    'Garnish with green onions, crushed peanuts, and lime wedges.'
  ],
  isGlutenFree: true,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
),

Meal(
  id: 'm24',
  categories: ['c8', 'c6'],
  title: 'Korean Bibimbap',
  affordability: Affordability.pricey,
  complexity: Complexity.challenging,
  imageUrl: 'https://cdn.pixabay.com/photo/2020/02/28/12/43/bibimbap-4887417_1280.jpg',
  duration: 40,
  ingredients: [
    '1 Cup Cooked Rice',
    '200g Beef Strips (or Tofu for vegetarian)',
    'Spinach',
    'Carrots',
    'Zucchini',
    'Bean Sprouts',
    'Fried Egg',
    'Gochujang (Korean Chili Paste)',
    'Sesame Oil',
    'Soy Sauce'
  ],
  steps: [
    'Sauté vegetables separately in sesame oil and season with salt.',
    'Cook beef strips with soy sauce and sesame oil.',
    'Arrange cooked rice in a bowl and top with vegetables and beef.',
    'Place a fried egg on top.',
    'Serve with a dollop of gochujang and mix well before eating.'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
),

Meal(
  id: 'm26',
  categories: ['c8', 'c7'],
  title: 'Vietnamese Pho',
  affordability: Affordability.pricey,
  complexity: Complexity.hard,
  imageUrl: 'https://cdn.pixabay.com/photo/2021/11/01/15/55/pho-6760890_1280.jpg',
  duration: 90,
  ingredients: [
    '200g Rice Noodles',
    '1L Beef or Chicken Broth',
    '200g Beef (thinly sliced) or Chicken',
    'Bean Sprouts',
    'Cilantro',
    'Basil Leaves',
    'Lime',
    'Fish Sauce',
    'Hoisin Sauce',
    'Chili Peppers'
  ],
  steps: [
    'Cook rice noodles according to package instructions.',
    'Bring broth to a boil and season with fish sauce.',
    'Add thinly sliced meat to the hot broth to cook.',
    'In a bowl, arrange noodles and pour broth over them.',
    'Top with bean sprouts, cilantro, basil, and lime wedges.',
    'Serve with hoisin sauce and chili peppers.'
  ],
  isGlutenFree: true,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: true,
),

Meal(
  id: 'm27',
  categories: ['c8'],
  title: 'Tibetan Momos (Veg)',
  affordability: Affordability.affordable,
  complexity: Complexity.simple,
  imageUrl: 'https://cdn.pixabay.com/photo/2020/09/21/12/40/meal-5589923_640.jpg',
  duration: 40,
  ingredients: [
    '1 Cup Flour',
    '1/4 Cup Water',
    '1/2 Cup Cabbage (finely chopped)',
    '1/2 Cup Carrot (grated)',
    '1/4 Cup Onion (finely chopped)',
    '1 tbsp Soy Sauce',
    '1 tbsp Sesame Oil',
    'Salt to taste'
  ],
  steps: [
    'Make a dough by mixing flour and water, knead well.',
    'In a pan, sauté cabbage, carrot, and onion with sesame oil.',
    'Add soy sauce and salt, cook until veggies are tender.',
    'Fill the dough circles with the veggie mixture and form momos.',
    'Steam the momos for 15-20 minutes until cooked.',
    'Serve hot with dipping sauce.'
  ],
  isGlutenFree: false,
  isVegan: true,
  isVegetarian: true,
  isLactoseFree: true,
),

Meal(
  id: 'm28',
  categories: ['c8'],
  title: 'Thukpa (Veg)',
  affordability: Affordability.affordable,
  complexity: Complexity.simple,
  imageUrl: 'https://cdn.pixabay.com/photo/2020/09/21/14/07/meal-5590186_640.jpg',
  duration: 30,
  ingredients: [
    '200g Noodles',
    '1/2 Cup Carrot (julienned)',
    '1/2 Cup Cabbage (shredded)',
    '1 Onion (chopped)',
    '1 Tomato (chopped)',
    '1 tbsp Soy Sauce',
    '1 tbsp Ginger-Garlic Paste',
    '1 tsp Turmeric Powder',
    '1/2 tsp Black Pepper',
    'Fresh Cilantro'
  ],
  steps: [
    'Boil noodles in salted water and set aside.',
    'In a pot, heat oil and sauté onions and ginger-garlic paste.',
    'Add carrots, cabbage, and tomatoes. Cook for 5 minutes.',
    'Add soy sauce, turmeric powder, black pepper, and water.',
    'Bring the soup to a boil and add the noodles.',
    'Simmer for 10 minutes, garnish with fresh cilantro and serve.'
  ],
  isGlutenFree: false,
  isVegan: true,
  isVegetarian: true,
  isLactoseFree: true,
),


Meal(
  id: 'm30',
  categories: ['c8'],
  title: 'Chole Bhature',
  affordability: Affordability.affordable,
  complexity: Complexity.simple,
  imageUrl: 'https://cdn.pixabay.com/photo/2022/12/28/17/44/bowl-7683485_1280.jpg',
  duration: 60,
  ingredients: [
    '1 Cup Chickpeas',
    '2 Onions (chopped)',
    '2 Tomatoes (pureed)',
    '1 tbsp Ginger-Garlic Paste',
    '1 tbsp Garam Masala',
    '1 tsp Cumin Seeds',
    '1 tsp Turmeric Powder',
    '1 tsp Red Chili Powder',
    '2 Cups Whole Wheat Flour (for Bhature)',
    '1 tbsp Yogurt',
    'Salt to taste'
  ],
  steps: [
    'Soak chickpeas overnight and boil until soft.',
    'In a pan, sauté onions and ginger-garlic paste.',
    'Add tomatoes, garam masala, cumin seeds, turmeric, and chili powder.',
    'Add boiled chickpeas, simmer for 10 minutes.',
    'For Bhature, mix flour, yogurt, water, and salt to make a dough.',
    'Divide dough into balls, roll them out, and deep-fry until golden.',
    'Serve chole with bhature.'
  ],
  isGlutenFree: false,
  isVegan: true,
  isVegetarian: true,
  isLactoseFree: false,
),


Meal(
  id: 'm29',
  categories: ['c8'],
  title: 'Paneer Butter Masala',
  affordability: Affordability.pricey,
  complexity: Complexity.challenging,
  imageUrl: 'https://cdn.pixabay.com/photo/2022/03/02/12/42/paneer-7043098_1280.jpg',
  duration: 45,
  ingredients: [
    '200g Paneer (cubed)',
    '2 Tomatoes (pureed)',
    '1 Onion (finely chopped)',
    '1/4 Cup Cashew Nuts',
    '2 tbsp Butter',
    '1 tsp Garam Masala',
    '1/2 tsp Turmeric Powder',
    '1/2 Cup Cream',
    'Salt to taste'
  ],
  steps: [
    'Blend tomatoes into a puree and set aside.',
    'In a pan, roast cashew nuts and blend them into a smooth paste.',
    'Heat butter in a pan, sauté onions until golden.',
    'Add tomato puree, garam masala, turmeric powder, and cook for 10 minutes.',
    'Add cashew paste, paneer cubes, and cream, cook for another 10 minutes.',
    'Serve hot with naan or rice.'
  ],
  isGlutenFree: true,
  isVegan: false,
  isVegetarian: true,
  isLactoseFree: false,
),
Meal(
  id: 'm37',
  categories: ['c9'],
  title: 'Quiche Lorraine',
  affordability: Affordability.luxurious,
  complexity: Complexity.challenging,
  imageUrl: 'https://cdn.pixabay.com/photo/2016/08/08/21/52/quiche-1579383_1280.jpg',
  duration: 60,
  ingredients: [
    '1 Pie Crust',
    '200g Bacon (diced)',
    '1 Onion (chopped)',
    '200ml Heavy Cream',
    '200ml Milk',
    '4 Eggs',
    'Salt and Pepper to taste',
    '1 Cup Grated Cheese'
  ],
  steps: [
    'Preheat the oven to 180°C.',
    'Cook bacon in a pan until crispy, then remove and set aside.',
    'Sauté onions in the same pan until soft.',
    'In a bowl, mix eggs, cream, milk, salt, pepper, and grated cheese.',
    'Layer the cooked bacon and onions in the pie crust, then pour the egg mixture over.',
    'Bake for 35-40 minutes or until set and golden.'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: false,
),
Meal(
  id: 'm38',
  categories: ['c9'],
  title: 'Croque Monsieur',
  affordability: Affordability.affordable,
  complexity: Complexity.simple,
  imageUrl: 'https://cdn.pixabay.com/photo/2024/02/24/12/34/croque-madame-8593938_960_720.png',
  duration: 20,
  ingredients: [
    '4 Slices of Bread',
    '2 Slices of Ham',
    '2 Slices of Cheese (Gruyère or Emmental)',
    'Butter for spreading',
    '1 tbsp Dijon Mustard',
    '1/4 Cup Bechamel Sauce'
  ],
  steps: [
    'Preheat a griddle or pan.',
    'Spread butter on bread slices and layer with mustard, ham, and cheese.',
    'Top with another slice of bread and grill until golden brown on both sides.',
    'Optionally, add bechamel sauce on top for an extra creamy layer.'
  ],
  isGlutenFree: false,
  isVegan: false,
  isVegetarian: false,
  isLactoseFree: false,
),


];