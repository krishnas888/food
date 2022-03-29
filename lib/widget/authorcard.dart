import 'package:flutter/material.dart';
import 'package:food/widget/cirleimage.dart';
import 'package:food/widget/custom_theme.dart';

class AuthorCard extends StatefulWidget {
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
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          CircleImage(
            imageProvider: widget.imageProvider,
            imageRadius: 28,
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.authorName,
                style: FoodTheme.lightTextTheme.headline2,
              ),
              Text(
                widget.title,
                style: FoodTheme.lightTextTheme.headline3,
              ),
            ],
          ),
          const SizedBox(width: 50,),
          IconButton(
            onPressed: () {
             setState(() {
               _isFavorited = !_isFavorited;
             });
            },
            icon: Icon(_isFavorited ? Icons.favorite :
            Icons.favorite_border),
            iconSize: 30,
            color: Colors.pink[400],
          )
        ],
      ),
    );
  }
}
