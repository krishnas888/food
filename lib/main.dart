import 'package:flutter/material.dart';
import 'package:food/screens/food_home_screen.dart';
import 'package:food/widget/custom_theme.dart';
void main() {
  runApp(const FoodCamp());
}
class FoodCamp extends StatelessWidget {
  const FoodCamp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FoodTheme.dark();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      title: 'Food Camp',
      home: const FoodHomeScreen(),
    );
  }
}