import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'attribute_icon.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.7,
      child: Row(
        children: [
          //icons list
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  ),
                  Spacer(),
                  AttributeIcon(
                    icon: 'assets/icons/sun.svg',
                  ),
                  AttributeIcon(
                    icon: 'assets/icons/icon_2.svg',
                  ),
                  AttributeIcon(
                    icon: 'assets/icons/icon_3.svg',
                  ),
                  AttributeIcon(
                    icon: 'assets/icons/icon_4.svg',
                  ),
                ],
              ),
            ),
          ),
          //plant photo
          Container(
            width: size.width * 0.7,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      color: kPrimaryColor.withOpacity(0.3),
                      blurRadius: 60)
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                ),
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img.png'))),
          )
        ],
      ),
    );
  }
}
