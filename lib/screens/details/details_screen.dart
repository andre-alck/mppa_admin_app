import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mppa_application/constants.dart';
import 'package:mppa_application/models/Product.dart';
import 'package:mppa_application/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
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
}
