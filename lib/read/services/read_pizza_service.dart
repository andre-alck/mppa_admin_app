import 'package:http/http.dart' as http;

class ReadPizzaService {
  Future<String> fetchPizza() async {
    final fResponse = http.get(
      Uri.parse(
        'http://localhost:8080/pizzas/',
      ),
    );

    final response = await fResponse;
    return response.body;
  }
}
