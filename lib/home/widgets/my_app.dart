import 'package:flutter/material.dart';

import '../../core/constants.dart';
import '../pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      title: 'Mimi Pizzas Pré-Assadas',
      theme: ThemeData(
        textTheme: Theme.of(
          context,
        ).textTheme.apply(
              bodyColor: kTextColor,
            ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomePage(),
    );
  }
}
