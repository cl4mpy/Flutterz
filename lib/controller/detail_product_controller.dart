import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailProductController extends GetxController {
  late String namaProduk;
  late String harga;
  late String description;
  late Image productImage;
  late String reviews;
  late String rating;
  late String seller;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['name'];
    harga = arguments['harga'];
    description = arguments['description'];
    productImage = arguments['img'];
    reviews = arguments['reviews'];
    rating = arguments['rating'];
    seller = arguments['seller'];
  }
}