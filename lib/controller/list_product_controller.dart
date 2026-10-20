
import 'package:application_project/models/product_models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductController extends GetxController {
  final List<ProductModel> initialProducts = [
    ProductModel(
      namaProduk: "Samsung Galaxy FlipFold 1",
      harga: "Rp. 41.000.000,00",
      description:
          "Smartphone foldable premium dengan layar fleksibel dan performa tinggi.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1598327105666-5b89351aff97",
        fit: BoxFit.cover,
      ),
      reviews: "1.284 Reviews",
      rating: "4.8",
      seller: "Samsung Official Store",
    ),
    ProductModel(
      namaProduk: "iPhone 20 Ultra Max",
      harga: "Rp. 67.000.000,00",
      description:
          "Smartphone flagship dengan kamera profesional dan performa generasi terbaru.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1592750475338-74b7b21085ab",
        fit: BoxFit.cover,
      ),
      reviews: "2.431 Reviews",
      rating: "4.9",
      seller: "Apple Official Store",
    ),
    ProductModel(
      namaProduk: "ROG Zephyrus G16",
      harga: "Rp. 103.000.000,00",
      description:
          "Gaming laptop premium dengan performa tinggi untuk gaming dan produktivitas.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1603302576837-37561b2e2302",
        fit: BoxFit.cover,
      ),
      reviews: "876 Reviews",
      rating: "4.7",
      seller: "ASUS ROG Official",
    ),
    ProductModel(
      namaProduk: "MyKonos Empire - Extrait de Parfume 100ml",
      harga: "Rp. 230.000,00",
      description:
          "Parfum extrait dengan aroma elegan dan karakter yang tahan lama.",
      productImage: Image.network(
        "https://officialmykonos.com/cdn/shop/files/empire100ml1.jpg?v=1775736295&width=620",
        fit: BoxFit.cover,
      ),
      reviews: "542 Reviews",
      rating: "4.6",
      seller: "MyKonos Official",
    ),
    ProductModel(
      namaProduk: "MyKonos Empire Fans Edition 100ml",
      harga: "Rp. 280.000,00",
      description:
          "Edisi spesial MyKonos Empire dengan aroma eksklusif untuk kolektor.",
      productImage: Image.network(
        "https://officialmykonos.com/cdn/shop/files/empire100ml1.jpg?v=1775736295&width=620",
        fit: BoxFit.cover,
      ),
      reviews: "328 Reviews",
      rating: "4.8",
      seller: "MyKonos Official",
    ),
    ProductModel(
      namaProduk: "Sony WH-1000XM6",
      harga: "Rp. 6.499.000,00",
      description:
          "Headphone wireless dengan active noise cancellation dan audio berkualitas tinggi.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1505740420928-5e560c06d30e",
        fit: BoxFit.cover,
      ),
      reviews: "3.127 Reviews",
      rating: "4.9",
      seller: "Sony Official Store",
    ),
    ProductModel(
      namaProduk: "Apple Watch Series X",
      harga: "Rp. 12.999.000,00",
      description:
          "Smartwatch premium dengan fitur kesehatan, olahraga, dan konektivitas lengkap.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1546868871-7041f2a55e12",
        fit: BoxFit.cover,
      ),
      reviews: "1.745 Reviews",
      rating: "4.8",
      seller: "Apple Official Store",
    ),
    ProductModel(
      namaProduk: "Nike Air Max Pro",
      harga: "Rp. 2.499.000,00",
      description:
          "Sneakers modern dengan cushioning nyaman untuk aktivitas sehari-hari.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1542291026-7eec264c27ff",
        fit: BoxFit.cover,
      ),
      reviews: "2.856 Reviews",
      rating: "4.7",
      seller: "Nike Official",
    ),
    ProductModel(
      namaProduk: "MacBook Pro M5 Max",
      harga: "Rp. 54.999.000,00",
      description:
          "Laptop profesional dengan chip performa tinggi untuk developer dan kreator.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1517336714731-489689fd1ca8",
        fit: BoxFit.cover,
      ),
      reviews: "1.632 Reviews",
      rating: "4.9",
      seller: "Apple Official Store",
    ),
    ProductModel(
      namaProduk: "Canon EOS R8 Pro",
      harga: "Rp. 31.500.000,00",
      description:
          "Kamera mirrorless untuk fotografi dan videografi profesional.",
      productImage: Image.network(
        "https://images.unsplash.com/photo-1516035069371-29a1b244cc32",
        fit: BoxFit.cover,
      ),
      reviews: "764 Reviews",
      rating: "4.8",
      seller: "Canon Official Store",
    ),
  ];

  // Daftar produk yang ditampilkan di halaman.
  final RxList<ProductModel> listProduct = <ProductModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    // Isi daftar dengan data awal ketika controller dibuat.
    listProduct.assignAll(initialProducts);
  }

  // Mengembalikan produk yang dihapus saat pull-to-refresh.
  Future<void> refreshProducts() async {
    await Future.delayed(
      const Duration(seconds: 1),
    );

    listProduct.assignAll(initialProducts);
  }
}
