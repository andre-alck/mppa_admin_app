import 'package:flutter/material.dart';
import 'package:mppa_application/home/widgets/app_bar.dart';
import 'package:mppa_application/home/widgets/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: appBar(),
      body: const Body(),
    );
  }
}
