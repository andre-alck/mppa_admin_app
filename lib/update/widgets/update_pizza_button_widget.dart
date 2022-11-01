import 'package:flutter/material.dart';

import '../../chore/models/pizza_model.dart';
import '../services/update_pizza_service.dart';

class UpdatePizzaButtonWidget extends StatelessWidget {
  const UpdatePizzaButtonWidget({
    Key? key,
    required this.pizzaModel,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
  }) : super(
          key: key,
        );

  final PizzaModel pizzaModel;
  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;

  @override
  Widget build(
    BuildContext context,
  ) {
    return FloatingActionButton(
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
    );
  }
}
