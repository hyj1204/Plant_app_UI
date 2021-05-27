import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';
import 'components/image_and_icons.dart';
import 'components/title_and_price.dart';
import 'package:Flutter_UI_Practise/model/plantData.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen(this.plant);
  final Plant plant;
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          ImageAndIcons(size: size),
          TitleAndPrice(
            name: widget.plant.name,
            country: widget.plant.country,
            price: widget.plant.price,
            size: size,
          ),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: size.height * 0.1,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(30))),
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  color: kPrimaryColor,
                ),
              ),
              Expanded(
                  child: FlatButton(
                      onPressed: null,
                      child: Text(
                        'Description',
                        style: TextStyle(
                          color: kTextColor,
                          fontSize: 20,
                        ),
                      )))
            ],
          )
        ],
      ),
    );
  }
}
