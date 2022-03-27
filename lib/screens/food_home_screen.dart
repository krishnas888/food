import 'package:flutter/material.dart';
import 'package:food/screens/card_one_screen.dart';

import '../widget/custom_theme.dart';
import 'card_three_screen.dart';
import 'card_two_screen.dart';
class FoodHomeScreen extends StatefulWidget {
  const FoodHomeScreen({Key? key}) : super(key: key);

  @override
  State<FoodHomeScreen> createState() => _FoodHomeScreenState();
}

class _FoodHomeScreenState extends State<FoodHomeScreen> {

  int _selectIndex=0;

  static List<Widget>? pages=<Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectIndex=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FoodTheme.dark();
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Camp',
          style: theme.textTheme.headline6,
        ),
      ),
      body: pages![_selectIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
              label: "Card"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
              label: "Card2"
          ),
          BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),
              label: "Card3"
          ),

        ],
      ),
    );
  }
}
