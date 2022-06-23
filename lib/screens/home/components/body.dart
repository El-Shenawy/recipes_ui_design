import 'package:flutter/material.dart';
import 'package:recipes/models/recipeBundel.dart';
import 'package:recipes/screens/home/components/categories.dart';
import 'package:recipes/screens/home/components/recipe_bundel_card.dart';
import 'package:recipes/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          const Categories(),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                    mainAxisSpacing: 20,
                    crossAxisSpacing:
                        SizeConfig.orientation == Orientation.landscape
                            ? SizeConfig.defaultSize * 2
                            : 0,
                    childAspectRatio: 1.65),
                itemCount: recipeBundles.length,
                itemBuilder: (context, index) => RecipeBundleCard(
                  recipeBundle: recipeBundles[index],
                  press: (){},
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
