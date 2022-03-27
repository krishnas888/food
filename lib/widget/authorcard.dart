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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          CircleImage(
            imageProvider: imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          const SizedBox(width: 50,),
          IconButton(
            onPressed: () {
             const snackBar = SnackBar(content: Text("Fovorate pressd"));
             ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            icon: const Icon(Icons.favorite_border),
            iconSize: 30,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
