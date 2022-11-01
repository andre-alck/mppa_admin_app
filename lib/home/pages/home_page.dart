import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  static const String routeName = "/homepage";

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              onPressed: () => Navigator.pushNamed(
                context,
                "/create",
              ),
              icon: const Icon(
                Icons.create,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(
                context,
                "/read",
              ),
              icon: const Icon(
                Icons.read_more,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(
                context,
                "/update",
              ),
              icon: const Icon(
                Icons.update,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () => Navigator.pushNamed(
                context,
                "/delete",
              ),
              icon: const Icon(
                Icons.delete,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
