import 'package:flutter/material.dart';

import '../../create/pages/create_page.dart';
import '../../delete/delete_page.dart';
import '../../home/pages/home_page.dart';
import '../../read/pages/read_page.dart';
import '../../update/update_page.dart';

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
      initialRoute: "/homepage",
      routes: {
        "/homepage": (
          context,
        ) =>
            const HomePage(),
        "/create": (
          context,
        ) =>
            const CreatePage(),
        "/read": (
          context,
        ) =>
            const ReadPage(),
        "/update": (
          context,
        ) =>
            const UpdatePage(),
        "/delete": (
          context,
        ) =>
            const DeletePage(),
      },
    );
  }
}
