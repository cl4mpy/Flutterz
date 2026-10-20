import 'package:flutter/material.dart';

class ProductModel {
  String namaProduk;
  String harga;
  String description;
  Image productImage;
  String reviews;
  String rating;
  String seller;

  ProductModel({
    required this.namaProduk,
    required this.harga,
    required this.description,
    required this.productImage,
    required this.reviews,
    required this.rating,
    required this.seller
  });
}