import 'package:application_project/controller/list_product_controller.dart';
import 'package:application_project/pages/detail_product_page.dart';
import 'package:application_project/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListProductPage extends StatelessWidget {
  ListProductPage({super.key});

  final controller = Get.put(ListProductController());

  Future<void> refreshProducts() async {
    await Future.delayed(const Duration(seconds: 1));

    // Nanti panggil API atau database di sini
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),

      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 225, 233, 255),
        elevation: 0,
        toolbarHeight: 85,
        centerTitle: true,
        title: const Text(
          "My Products",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color(0xFF171717),
          ),
        ),
      ),

      body: Obx(
        () => RefreshIndicator(
          onRefresh: controller.refreshProducts,
          color: const Color(0xFF4F6BFF),

          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),

            padding: const EdgeInsets.fromLTRB(35, 40, 35, 40),
            itemCount: controller.listProduct.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduct[index];

              return Dismissible(
                key: ValueKey(produk.namaProduk),

                direction: DismissDirection.startToEnd,

                background: Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  color: Colors.deepOrange,
                  child: const Icon(Icons.delete, color: Colors.white),
                ),

                onDismissed: (direction) {
                  controller.listProduct.removeAt(index);
                },

                child: InkWell(
                  borderRadius: BorderRadius.circular(22),
                  onTap: () {
                    Get.toNamed(
                      Routes.detailProduct,
                      arguments: {
                        'name': produk.namaProduk,
                        'harga': produk.harga,
                        'description': produk.description,
                        'img': produk.productImage,
                        'reviews': produk.reviews,
                        'rating': produk.rating,
                        'seller': produk.seller,
                      },
                    );
                  },
                  onLongPress: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SafeArea(
                          child: Wrap(
                            children: [
                              ListTile(
                                leading: const Icon(Icons.visibility_outlined),
                                title: const Text('View Details'),
                                onTap: () {
                                  Get.back();

                                  Get.toNamed(
                                    Routes.detailProduct,
                                    arguments: {
                                      'name': produk.namaProduk,
                                      'harga': produk.harga,
                                      'description': produk.description,
                                      'img': produk.productImage,
                                      'reviews': produk.reviews,
                                      'rating': produk.rating,
                                      'seller': produk.seller,
                                    },
                                  );
                                },
                              ),

                              ListTile(
                                leading: const Icon(
                                  Icons.delete_outline,
                                  color: Colors.red,
                                ),
                                title: const Text(
                                  'Delete Product',
                                  style: TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  Navigator.pop(context);

                                  Get.dialog(
                                    AlertDialog(
                                      title: const Text('Delete Product'),
                                      content: Text(
                                        'Hapus ${produk.namaProduk}?',
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () => Get.back(),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            controller.listProduct.removeAt(
                                              index,
                                            );
                                            Get.back();
                                          },
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 15,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(14),
                      child: Row(
                        children: [
                          // Product Icon
                          Container(
                            width: 54,
                            height: 54,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF0F4FF),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.shopping_bag_outlined,
                              color: Color(0xFF4F6BFF),
                              size: 27,
                            ),
                          ),

                          const SizedBox(width: 16),

                          // Product Information
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  produk.namaProduk,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF18181B),
                                  ),
                                ),

                                const SizedBox(height: 7),

                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 9,
                                    vertical: 5,
                                  ),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF3F4F6),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    produk.harga,
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFF52525B),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            width: 34,
                            height: 34,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 14,
                              color: Color(0xFF71717A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
