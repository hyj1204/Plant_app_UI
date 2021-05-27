import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';

class PlantCard extends StatelessWidget {
  const PlantCard(
      {Key key, this.photo, this.name, this.country, this.price, this.onPress})
      : super(key: key);

  final String photo, name, country;
  final int price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin:
            EdgeInsets.only(top: kDefaultPadding / 2, left: kDefaultPadding),
        width: size.height * 0.3 / 4 * 3,
        height: size.height * 0.3,
        child: Column(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(photo), fit: BoxFit.cover),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
              ),
            )),
            Container(
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '$name\n'.toUpperCase(),
                      style: Theme.of(context).textTheme.button,
                    ),
                    TextSpan(
                        text: '$country'.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(5, -5),
                        blurRadius: 20,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
            ),
          ],
        ),
      ),
    );
  }
}
