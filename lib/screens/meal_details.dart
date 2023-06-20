import 'package:flutter/material.dart';

import 'package:meals_app/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    Widget content = Scaffold(
      appBar: AppBar(
        title: Text(meal.title),
      ),
      body: Image.network(
        meal.imageUrl,
        height: 300,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       FadeInImage(
      //         placeholder: MemoryImage(kTransparentImage),
      //         image: NetworkImage(meal.imageUrl),
      //       ),
      //       Text(
      //         "${meal.complexity}",
      //         style: Theme.of(context).textTheme.headlineLarge!.copyWith(
      //               color: Theme.of(context).colorScheme.onBackground,
      //             ),
      //       )
      //     ],
      //   ),
      // ),
    );

    return content;
  }
}
