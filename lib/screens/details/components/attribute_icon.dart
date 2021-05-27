import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AttributeIcon extends StatelessWidget {
  const AttributeIcon({
    Key key,
    this.icon,
  }) : super(key: key);

  final String icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      padding: EdgeInsets.all(15),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
              blurRadius: 20,
              offset: Offset(0, 10),
              color: kPrimaryColor.withOpacity(0.3)),
          BoxShadow(
              blurRadius: 20, offset: Offset(-15, -15), color: Colors.white),
        ],
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
