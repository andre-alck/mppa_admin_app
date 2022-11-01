import 'package:flutter_test/flutter_test.dart';
import 'package:mppa_admin/pizza/models/pizza_model.dart';

void main() {
  test(
    'Given JSON When PizzaModel is instanciated Should serialize',
    () {
      Map<String, dynamic> json = {
        "id": "id1",
        "title": "title1",
        "description": "description1",
        "price": 1.0,
        "registrationDate": "registrationDate1"
      };

      final pizzaModel = PizzaModel.fromJson(
        json,
      );

      expect(
        pizzaModel.id,
        json['id'],
      );
      expect(
        pizzaModel.title,
        json['title'],
      );
      expect(
        pizzaModel.description,
        json['description'],
      );
      expect(
        pizzaModel.price,
        json['price'],
      );
      expect(
        pizzaModel.registrationDate,
        json['registrationDate'],
      );
    },
  );
}
