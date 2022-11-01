import 'package:flutter/material.dart';

import '../../create/pages/create_page.dart';
import '../../delete/delete_page.dart';
import '../../home/pages/home_page.dart';
import '../../read/pages/read_page.dart';
import '../../update/pages/update_page.dart';

class App extends StatelessWidget {
  const App({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      title: "mppa_admin",
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (
          context,
        ) =>
            const HomePage(),
        CreatePage.routeName: (
          context,
        ) =>
            const CreatePage(),
        ReadPage.routeName: (
          context,
        ) =>
            const ReadPage(),
        UpdatePage.routeName: (
          context,
        ) =>
            const UpdatePage(),
        DeletePage.routeName: (
          context,
        ) =>
            const DeletePage(),
      },
    );
  }
}
