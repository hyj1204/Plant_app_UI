import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.name,
    this.country,
    this.price,
    this.size,
  }) : super(key: key);

  final String name, country;
  final int price;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          RichText(
            text: TextSpan(children: [
              TextSpan(
                text: '$name\n'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: country.toUpperCase(),
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.w300),
              ),
            ]),
          ),
          Spacer(),
          Text(
            '\$$price',
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: kPrimaryColor),
          ),
        ]),
      ),
    );
  }
}
