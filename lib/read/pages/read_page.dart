import 'package:flutter/material.dart';

import '../widgets/read_pizza_widget.dart';

class ReadPage extends StatelessWidget {
  const ReadPage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: const ReadWidget(),
    );
  }
}
