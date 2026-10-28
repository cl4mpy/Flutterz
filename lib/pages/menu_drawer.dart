import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:application_project/controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MenuDrawerController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Application'),
        backgroundColor: Colors.white,
      ),
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
                  CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.person, size: 35),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'My Application',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ...controller.menuItems.map(
              (item) => ListTile(
                leading: Icon(item['icon']),
                title: Text(item['title']),
                onTap: () {
                  Get.toNamed(item['route']);
                },
              ),
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text('My Application'),
      ),
    );
  }
}