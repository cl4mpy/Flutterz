
import 'package:application_project/controller/main_menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final menucontroller = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: const Text('My Application'),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          elevation: 0,
        ),

        // MENU DRAWER DARI SAMPING
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.account_circle,
                      size: 60,
                      color: Colors.white,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'My Application',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Home'),
                selected: menucontroller.selectedIndex.value == 0,
                onTap: () {
                  menucontroller.changePage(0);
                  Get.back();
                },
              ),

              ListTile(
                leading: const Icon(Icons.history),
                title: const Text('History'),
                selected: menucontroller.selectedIndex.value == 1,
                onTap: () {
                  menucontroller.changePage(1);
                  Get.back();
                },
              ),

              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                selected: menucontroller.selectedIndex.value == 2,
                onTap: () {
                  menucontroller.changePage(2);
                  Get.back();
                },
              ),
            ],
          ),
        ),

        // HALAMAN BERUBAH SESUAI MENU YANG DIPILIH
        body: IndexedStack(
          index: menucontroller.selectedIndex.value,
          children: menucontroller.listPages,
        ),
      ),
    );
  }
}
