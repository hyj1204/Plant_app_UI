import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            photo: 'assets/images/bottom_img_1.png',
            onPress: () {},
          ),
          FeaturedPlantCard(
            photo: 'assets/images/bottom_img_2.png',
            onPress: () {},
          ),
        ],
      ),
    );
  }
}

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key key,
    this.photo,
    this.onPress,
  }) : super(key: key);

  final String photo;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: size.height * 0.01,
        ),
        width: size.height * 0.17 / 4 * 6,
        height: size.height * 0.17,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(photo),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
