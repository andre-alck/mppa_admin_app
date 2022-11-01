import 'package:flutter/material.dart';
import 'package:mppa_admin/create/services/create_pizza_service.dart';

import '../../pizza/models/pizza_model.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
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
                controller: titleController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.title,
                  ),
                  labelText: "Título",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: descriptionController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.description,
                  ),
                  labelText: "Descrição",
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextFormField(
                controller: priceController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue.shade100,
                  suffixIcon: const Icon(
                    Icons.price_change,
                  ),
                  labelText: "Preço",
                ),
              ),
              Center(
                child: IconButton(
                  icon: const Icon(
                    Icons.publish,
                    size: 48,
                  ),
                  onPressed: () {
                    final title = titleController.text.trim();
                    final description = descriptionController.text.trim();
                    final price = double.parse(
                      priceController.text.trim(),
                    );

                    final pizzaModel = PizzaModel(
                      title: title,
                      description: description,
                      price: price,
                    );

                    CreatePizzaService().savePizza(
                      pizzaModel,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}