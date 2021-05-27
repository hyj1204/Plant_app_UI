import 'package:Flutter_UI_Practise/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderAndSearchBar extends StatelessWidget {
  const HeaderAndSearchBar({
    Key key,
    @required this.searchHeight,
  }) : super(key: key);

  final double searchHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      // = blurRadius:50 so that the blur can show properly
      margin: EdgeInsets.only(bottom: searchHeight * 0.1),
      height: searchHeight,
      child: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: searchHeight - 27,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
        ),
        //search bar
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(
                'Hi Travis!',
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                alignment: Alignment.center,
                // put textField in the center
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                          enabledBorder: InputBorder.none,
                          //remove the line under the input text when user finish typing
                          focusedBorder: InputBorder.none,
                          //remove the line under the input text
                        ),
                      ),
                    ),
                    SvgPicture.asset('assets/icons/search.svg')
                  ],
                ),
                margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 54,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(5, 10),
                          blurRadius: 35,
                          color: kPrimaryColor.withOpacity(0.23)),
                    ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
