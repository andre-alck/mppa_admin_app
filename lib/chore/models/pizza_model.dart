class PizzaModel {
  final String id;
  final String title;
  final String description;
  final double price;
  final String registrationDate;

  PizzaModel({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.registrationDate,
  });

  PizzaModel.fromJson(
    Map<String, dynamic> json,
  )   : id = json['id'],
        title = json['title'],
        description = json['description'],
        price = json['price'],
        registrationDate = json['registrationDate'];
}
