import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mppa_application/core/models/Product.dart';

import '../../core/constants.dart';

AppBar appBar(BuildContext context, Product product) {
  return AppBar(
    backgroundColor: product.color,
    elevation: 1,
    leading: IconButton(
      icon: SvgPicture.asset(
        "assets/icons/back.svg",
        color: Colors.white,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: <Widget>[
      IconButton(
          onPressed: null,
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            color: Colors.white,
          )),
      IconButton(
          onPressed: null,
          icon: SvgPicture.asset(
            "assets/icons/cart.svg",
            color: Colors.white,
          )),
      const SizedBox(
        width: kDefaultPadding / 2,
      )
    ],
  );
}
