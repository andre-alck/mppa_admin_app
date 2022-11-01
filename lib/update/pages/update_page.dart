import 'package:flutter/material.dart';
import 'package:mppa_admin/chore/models/pizza_model.dart';
import 'package:mppa_admin/chore/widgets/user_input_widget.dart';
import 'package:mppa_admin/update/widgets/update_pizza_button_widget.dart';

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
              UserInputWidget(
                controller: titleController,
                hintText: 'Título',
                icon: Icons.title,
              ),
              const SizedBox(
                height: 10,
              ),
              UserInputWidget(
                controller: descriptionController,
                hintText: 'Descrição',
                icon: Icons.description,
              ),
              const SizedBox(
                height: 10,
              ),
              UserInputWidget(
                controller: priceController,
                hintText: 'Preço',
                icon: Icons.price_change,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: UpdatePizzaButtonWidget(
        pizzaModel: pizzaModel,
        titleController: titleController,
        descriptionController: descriptionController,
        priceController: priceController,
      ),
    );
  }
}
