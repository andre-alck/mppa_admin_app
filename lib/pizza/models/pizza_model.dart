class PizzaModel {
  final String title;
  final String description;
  final double price;

  PizzaModel({
    required this.title,
    required this.description,
    required this.price,
  });

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "price": price,
      };
}
