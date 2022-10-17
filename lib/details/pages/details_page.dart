import 'package:flutter/material.dart';
import 'package:mppa_application/details/widgets/body.dart';
import 'package:mppa_application/core/models/product.dart';

import '../widgets/app_bar.dart';

class DetailsPage extends StatelessWidget {
  final Product product;

  const DetailsPage({
    super.key,
    required this.product,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: appBar(
        context,
        product,
      ),
      body: Body(
        product: product,
      ),
    );
  }
}
