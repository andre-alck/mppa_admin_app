import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
              onPressed: () {},
              icon: const Icon(
                Icons.create,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.read_more,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.update,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              onPressed: () {},
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
