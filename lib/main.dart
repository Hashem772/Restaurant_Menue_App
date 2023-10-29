import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals' ,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        secondaryHeaderColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1)
      ),
      //home: CategoriesScreen(),
      initialRoute: '/CategoriesScreen',
      routes:{
        '/CategoriesScreen': (ctx) => CategoriesScreen(),
        CategoryMealeScreen.routName:(ctx) =>CategoryMealeScreen(),
        MealDetailScreen.routName:(ctx) => MealDetailScreen(),
      },
       onGenerateRoute: (settings){
          print(settings.arguments);
          print('ccccccccccc');
           return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
        },
//      onUnknownRoute: (setting){
//        return MaterialPageRoute(builder: (ctx) => CategoriesScreen());
//      }

    );
  }
}