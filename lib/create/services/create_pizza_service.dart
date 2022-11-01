import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mppa_admin/pizza/models/pizza_model.dart';

class CreatePizzaService {
  Future<http.Response> savePizza(
    PizzaModel pizzaModel,
  ) {
    return http.post(
      Uri.parse(
        'http://localhost:8080/pizzas/',
      ),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        pizzaModel.toJson(),
      ),
    );
  }
}
