import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealListItem extends StatelessWidget {
  const MealListItem({required this.meal, super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          meal.title,
          // Copy the text style from the context theme
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
        ),
      ),
    );
  }
}
