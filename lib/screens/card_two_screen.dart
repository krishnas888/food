import 'package:flutter/material.dart';
import 'package:food/widget/authorcard.dart';
import 'package:food/widget/custom_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  final String category = "Editor's Choice";
  final String title = "The Art of Honey Brade";
  final String description = "Learn to make the perfect bread.";
  final String chef = "Vegan";

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: const EdgeInsets.all(16),
          constraints: const BoxConstraints.expand(
            width: 400,
            height: 650,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/food/f6.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            children: <Widget>[
              const AuthorCard(
                authorName: "Emma Watson",
                title: "veg salad",
                imageProvider: AssetImage("assets/author/EM2.jpg",),
              ),
              Stack(
                children: <Widget>[
                  Text(
                    "Smoothies",
                    style: FoodTheme.lightTextTheme.headline3,
                  ),
                  Positioned(
                    child: Text(
                      "Recipe",
                      style: FoodTheme.lightTextTheme.headline3,
                    ),
                    bottom: 10,
                    right: 0,
                  ),
                ],
              ),
            ],
          ),),
    );
  }
}
