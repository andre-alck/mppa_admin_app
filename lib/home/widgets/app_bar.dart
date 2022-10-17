import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/constants.dart';

AppBar appBar() {
  return AppBar(
    elevation: 1,
    backgroundColor: Colors.white,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
      ),
      onPressed: () {},
    ),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: kTextColor,
        ),
        onPressed: () {},
      ),
      const SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
