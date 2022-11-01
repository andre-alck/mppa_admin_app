import 'package:flutter/material.dart';

import '../../chore/dtos/pizza_dto.dart';
import '../services/create_pizza_service.dart';

class CreatePizzaButtonWidget extends StatelessWidget {
  const CreatePizzaButtonWidget({
    Key? key,
    required this.titleController,
    required this.descriptionController,
    required this.priceController,
  }) : super(key: key);

  final TextEditingController titleController;
  final TextEditingController descriptionController;
  final TextEditingController priceController;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final title = titleController.text.trim();
        final description = descriptionController.text.trim();
        final price = double.parse(
          priceController.text.trim(),
        );

        final pizzaModel = PizzaDTO(
          title: title,
          description: description,
          price: price,
        );

        CreatePizzaService().savePizza(
          pizzaModel,
        );
      },
      child: const Icon(
        Icons.publish,
      ),
    );
  }
}
