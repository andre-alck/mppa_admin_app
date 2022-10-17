import 'package:flutter/material.dart';
import 'package:mppa_application/core/models/Product.dart';
import 'package:mppa_application/core/constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text('Color'),
              Row(
                children: <Widget>[
                  ColorDot(
                    product: product,
                    color: product.color,
                  ),
                  ColorDot(
                    product: product,
                    color: product.color,
                    isSelected: true,
                  ),
                  ColorDot(product: product, color: product.color),
                ],
              )
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(text: 'Size\n'),
                TextSpan(
                  text: '${product.size} cm',
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;

  const ColorDot({
    Key? key,
    required this.product,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(
              top: kDefaultPadding / 4, right: kDefaultPadding / 2),
          padding: const EdgeInsets.all(2.5),
          height: 24,
          width: 24,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? product.color : Colors.transparent,
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        )
      ],
    );
  }
}
