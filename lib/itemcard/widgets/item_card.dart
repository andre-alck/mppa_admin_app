import 'package:flutter/material.dart';
import 'package:mppa_application/core/models/Product.dart';
import 'package:mppa_application/core/constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  const ItemCard({
    super.key,
    required this.product,
    required this.press,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(
                kDefaultPadding,
              ),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(
                  16,
                ),
              ),
              child: Image.asset(
                product.image,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 4,
            ),
            child: Text(
              product.title,
              style: const TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            'R\$ ${product.price}0',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
