import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mppa_admin/chore/models/pizza_model.dart';

void main() {
  group(
    'Pizza Model',
    () {
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

      test(
        'Given list of json When PizzaModel is created then Test index 0',
        () {
          List<Map<String, dynamic>> json = [
            {
              "id": "id1",
              "title": "title1",
              "description": "description1",
              "price": 1.0,
              "registrationDate": "registrationDate1",
            },
            {
              "id": "id2",
              "title": "title2",
              "description": "description2",
              "price": 2.0,
              "registrationDate": "registrationDate2"
            }
          ];

          final pizzaModel1 = PizzaModel.fromJson(
            json[0],
          );

          expect(
            pizzaModel1.id,
            json[0]['id'],
          );
          expect(
            pizzaModel1.title,
            json[0]['title'],
          );
          expect(
            pizzaModel1.description,
            json[0]['description'],
          );
          expect(
            pizzaModel1.price,
            json[0]['price'],
          );
          expect(
            pizzaModel1.registrationDate,
            json[0]['registrationDate'],
          );

          final pizzaModel2 = PizzaModel.fromJson(
            json[1],
          );

          expect(
            pizzaModel2.id,
            json[1]['id'],
          );
          expect(
            pizzaModel2.title,
            json[1]['title'],
          );
          expect(
            pizzaModel2.description,
            json[1]['description'],
          );
          expect(
            pizzaModel2.price,
            json[1]['price'],
          );
          expect(
            pizzaModel2.registrationDate,
            json[1]['registrationDate'],
          );
        },
      );

      test(
        'Given Map JsonList When model list is created Then test id',
        () {
          List<Map<String, dynamic>> jsonList = [
            {
              "id": "id1",
              "title": "title1",
              "description": "description1",
              "price": 1.0,
              "registrationDate": "registrationDate1",
            },
            {
              "id": "id2",
              "title": "title2",
              "description": "description2",
              "price": 2.0,
              "registrationDate": "registrationDate2"
            }
          ];

          final pizzaListModel = jsonList.map(
            (
              e,
            ) =>
                PizzaModel.fromJson(
              e,
            ),
          );

          for (int i = 0; i < pizzaListModel.length; i++) {
            expect(
              pizzaListModel
                  .elementAt(
                    i,
                  )
                  .id,
              jsonList[i]['id'],
            );
          }
        },
      );

      test(
        'Given String stringJson When model list is created Then test id',
        () {
          const String stringJson = """
          [{"id":"ab6c7e63-6409-47ad-9377-e9ed1c6937a1","title":"t1","description":"d1","price":1.0,"registrationDate":"2022-11-01T15:11:06.86461"},{"id":"9457050c-ac00-43ed-a23d-91cfbb858e0a","title":"title2","description":"description2","price":2.0,"registrationDate":"2022-11-01T17:44:55.444319"}]
          """;

          final map = json.decode(
            stringJson,
          );

          expect(
            map[0]['id'],
            'ab6c7e63-6409-47ad-9377-e9ed1c6937a1',
          );

          expect(
            map[1]['id'],
            '9457050c-ac00-43ed-a23d-91cfbb858e0a',
          );
        },
      );
    },
  );
}
