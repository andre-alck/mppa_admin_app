// ignore: file_names
import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String description;
  final double price;
  final int size;
  final int id;
  final Color color;

  Product(
      {required this.id,
      required this.image,
      required this.title,
      required this.price,
      required this.description,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Portuguesa",
      price: 32.90,
      size: 30,
      description: 'Ingredientes que compõem a pizza Portuguesa.',
      image: "assets/images/pizza_1.jpg",
      color: const Color.fromARGB(155, 66, 35, 206)),
  Product(
      id: 2,
      title: "Calabresa",
      price: 32.90,
      size: 30,
      description: 'Ingredientes que compõem a pizza Calabresa.',
      image: "assets/images/pizza_2.jpg",
      color: const Color.fromARGB(201, 58, 184, 54)),
  Product(
      id: 3,
      title: "Frango",
      price: 32.90,
      size: 30,
      description: 'Ingredientes que compõem a pizza Frango.',
      image: "assets/images/pizza_3.jpg",
      color: const Color.fromARGB(239, 235, 14, 6)),
  Product(
      id: 4,
      title: "Mimi",
      price: 32.90,
      size: 30,
      description: 'Ingredientes que compõem a pizza Mimi.',
      image: "assets/images/pizza_4.jpg",
      color: const Color.fromARGB(255, 163, 69, 192)),
  Product(
      id: 5,
      title: "4 Queijos",
      price: 32.90,
      size: 30,
      description: 'Ingredientes que compõem a pizza 4 Queijos.',
      image: "assets/images/pizza_5.jpg",
      color: const Color.fromARGB(255, 233, 218, 17)),
];