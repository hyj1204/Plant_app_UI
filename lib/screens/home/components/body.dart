import 'package:flutter/material.dart';
import 'header_and_search_car.dart';
import 'recommended_plants.dart';
import 'title_with_more_btn.dart';
import 'featured_plants.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final searchHeight = size.height * 0.15;

    //make sure it can be scroll in some small screen
    return Column(
      children: [
        HeaderAndSearchBar(searchHeight: searchHeight),
        Spacer(),
        TitleWithMoreBtn(title: 'Recommended', onPressed: () {}),
        RecommendedPlants(),
        Spacer(),
        TitleWithMoreBtn(title: 'Featured Plants', onPressed: () {}),
        FeaturedPlants(),
      ],
    );
  }
}
