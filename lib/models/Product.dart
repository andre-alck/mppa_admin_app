// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Product {
  final String image;
  final String title;
  final String description;
  final int price;
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
      title: "Bag 1",
      price: 1,
      size: 1,
      description: 'dummyText',
      image: "assets/images/bag_1.png",
      color: const Color.fromARGB(155, 91, 110, 110)),
  Product(
      id: 2,
      title: "Bag 2",
      price: 2,
      size: 2,
      description: 'dummyText',
      image: "assets/images/bag_2.png",
      color: const Color.fromARGB(255, 42, 29, 121)),
  Product(
      id: 3,
      title: "Bag 3",
      price: 3,
      size: 3,
      description: 'dummyText',
      image: "assets/images/bag_3.png",
      color: const Color.fromARGB(355, 43, 39, 131)),
  Product(
      id: 4,
      title: "Bag 4",
      price: 4,
      size: 4,
      description: 'dummyText',
      image: "assets/images/bag_4.png",
      color: const Color.fromARGB(455, 44, 49, 141)),
  Product(
      id: 5,
      title: "Bag 5",
      price: 5,
      size: 5,
      description: 'dummyText',
      image: "assets/images/bag_5.png",
      color: const Color.fromARGB(555, 45, 59, 151)),
];
