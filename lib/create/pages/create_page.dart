import 'package:flutter/material.dart';

import '../../chore/widgets/user_input_widget.dart';
import '../widgets/create_pizza_button_widget.dart';

class CreatePage extends StatelessWidget {
  const CreatePage({
    super.key,
  });

  static const String routeName = "/create";

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
              UserInputWidget(
                controller: titleController,
                labelText: 'Título',
                icon: Icons.title,
              ),
              const SizedBox(
                height: 25,
              ),
              UserInputWidget(
                controller: descriptionController,
                labelText: 'Descrição',
                icon: Icons.description,
              ),
              const SizedBox(
                height: 25,
              ),
              UserInputWidget(
                controller: priceController,
                labelText: 'Preço',
                icon: Icons.price_change,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: CreatePizzaButtonWidget(
        titleController: titleController,
        descriptionController: descriptionController,
        priceController: priceController,
      ),
    );
  }
}
