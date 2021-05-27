import 'package:Flutter_UI_Practise/model/plantData.dart';
import 'package:Flutter_UI_Practise/screens/details/detail_screen.dart';
import 'package:flutter/material.dart';
import 'plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            photo: plantData[0].photo,
            name: plantData[0].name,
            country: plantData[0].country,
            price: plantData[0].price,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(plantData[0]),
              ));
            },
          ),
          PlantCard(
            photo: plantData[1].photo,
            name: plantData[1].name,
            country: plantData[1].country,
            price: plantData[1].price,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(plantData[1]),
              ));
            },
          ),
          PlantCard(
            photo: plantData[2].photo,
            name: plantData[2].name,
            country: plantData[2].country,
            price: plantData[2].price,
            onPress: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => DetailScreen(plantData[2]),
              ));
            },
          ),
        ],
      ),
    );
  }
}
