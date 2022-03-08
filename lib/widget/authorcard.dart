import 'package:flutter/material.dart';
import 'package:food/widget/cirleimage.dart';
import 'package:food/widget/custom_theme.dart';

class AuthorCard extends StatelessWidget {
  const AuthorCard(
      {Key? key,
      required this.authorName,
      required this.title,
      this.imageProvider})
      : super(key: key);
  final String authorName;
  final String title;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: <Widget>[
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: <Widget>[
              Text(
                authorName,
                style: FoodTheme.lightTextTheme.headline2,
              ),
              Text(
                title,
                style: FoodTheme.lightTextTheme.headline3,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
