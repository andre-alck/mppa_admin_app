import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mppa_admin/chore/dtos/pizza_dto.dart';
import 'package:mppa_admin/chore/models/pizza_model.dart';

class UpdatePizzaService {
  Future<http.Response> updatePizza(
    PizzaModel pizzaModel,
  ) {
    final pizzaDTO = PizzaDTO(
      title: pizzaModel.title,
      description: pizzaModel.description,
      price: pizzaModel.price,
    );

    return http.put(
      Uri.parse(
        'http://localhost:8080/pizzas/${pizzaModel.id}',
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        pizzaDTO.toJson(),
      ),
    );
  }
}
