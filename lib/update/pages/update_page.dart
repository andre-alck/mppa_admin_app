import 'package:flutter/material.dart';
import 'package:mppa_admin/chore/models/pizza_model.dart';
import 'package:mppa_admin/update/services/update_pizza_service.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({
    super.key,
  });

  static const String routeName = "/update";

  @override
  Widget build(
    BuildContext context,
  ) {
    PizzaModel pizzaModel = ModalRoute.of(
      context,
    )!
        .settings
        .arguments as PizzaModel;

    var titleController = TextEditingController();
    var descriptionController = TextEditingController();
    var priceController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(
            8.0,
          ),
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.title,
                  ),
                  hintText: pizzaModel.title,
                ),
                controller: titleController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.description,
                  ),
                  hintText: pizzaModel.description,
                ),
                controller: descriptionController,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.price_change,
                  ),
                  hintText: pizzaModel.price.toString(),
                ),
                controller: priceController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final newPizzaModel = PizzaModel(
            id: pizzaModel.id,
            title: titleController.text.trim(),
            description: descriptionController.text.trim(),
            price: double.parse(
              priceController.text.trim(),
            ),
            registrationDate: pizzaModel.registrationDate,
          );

          UpdatePizzaService().updatePizza(
            newPizzaModel,
          );
        },
        child: const Icon(
          Icons.publish,
        ),
      ),
    );
  }
}
