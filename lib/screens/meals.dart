import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({
    super.key,
    required this.title,
    required this.meals,
  });

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            for (final meal in meals)
              Container(
                height: 50,
                color: Theme.of(context).primaryColor,
                child: Center(
                  child: Text(meal.title),
                ),
              )
          ],
        ));
  }
}
