import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mppa_admin/chore/models/pizza_model.dart';

import '../services/read_pizza_service.dart';

class ReadWidget extends StatelessWidget {
  const ReadWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(
    BuildContext context,
  ) {
    return FutureBuilder(
      builder: (
        context,
        snapshot,
      ) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasData) {
            final List<dynamic> jsonList = json.decode(
              snapshot.data ?? '',
            );

            final listPizzaModel = jsonList.map(
              (
                e,
              ) =>
                  PizzaModel.fromJson(
                e,
              ),
            );

            return ListView.builder(
              itemCount: listPizzaModel.length,
              itemBuilder: (
                context,
                index,
              ) {
                return ListTile(
                  leading: const Icon(
                    Icons.local_pizza,
                  ),
                  title: Text(
                    listPizzaModel.elementAt(index).title,
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Erro: ${snapshot.error}',
              ),
            );
          } else {
            return const Center(
              child: Text(
                'No data.',
              ),
            );
          }
        }

        return const CircularProgressIndicator();
      },
      future: ReadPizzaService().fetchPizza(),
    );
  }
}
