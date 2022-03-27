import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../widget/custom_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 400,
          height: 650,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/food/f2.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.6),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.book,
                      color: Colors.white,
                      size: 40,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Recipe Trends',
                      style: FoodTheme.darkTextTheme.headline2,
                    ),
                    const SizedBox(height: 30),
                    Center(
                      child: Wrap(
                        alignment: WrapAlignment.start,
                        spacing: 12,
                        children: [
                          Chip(
                            label: Column(
                              children: [
                                Text("health",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                            onDeleted: (){
                              if (kDebugMode) {
                                print("Delete");
                              }
                            },
                          ),
                          Chip(
                            label: Column(
                              children: [
                                Text("Vegan",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                            onDeleted: (){
                              if (kDebugMode) {
                                print("Delete");
                              }
                            },
                          ),
                          Chip(
                            label: Column(
                              children: [
                                Text("Carrots",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ),
                          Chip(
                            label: Column(
                              children: [
                                Text("Greens",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ),
                          Chip(
                            label: Column(
                              children: [
                                Text("Wheat",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ), Chip(
                            label: Column(
                              children: [
                                Text("Pescetarian",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ), Chip(
                            label: Column(
                              children: [
                                Text("mint",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ), Chip(
                            label: Column(
                              children: [
                                Text("Lemongrass",style: FoodTheme.darkTextTheme.bodyText1,),
                              ],
                            ),
                            backgroundColor:Colors.black.withOpacity(0.7) ,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
