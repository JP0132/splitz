import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitz/pages/home/home.dart';
import 'package:splitz/pages/transaction/addTransaction.dart';

class CustomBottomNavbar extends StatelessWidget {
  const CustomBottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      extendBody: true,
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () => Get.to(() => const Addtransaction()),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() {
        return BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 6.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home,
                  color: controller.selectedIndex.value == 0
                      ? Colors.blue
                      : Colors.grey,
                ),
                onPressed: () {
                  controller.selectedIndex.value = 0;
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.analytics,
                  color: controller.selectedIndex.value == 1
                      ? Colors.blue
                      : Colors.grey,
                ),
                onPressed: () {
                  controller.selectedIndex.value = 1;
                },
              ),
              const SizedBox(width: 40), // Space for the floating action button
              IconButton(
                icon: Icon(
                  Icons.person,
                  color: controller.selectedIndex.value == 2
                      ? Colors.blue
                      : Colors.grey,
                ),
                onPressed: () {
                  controller.selectedIndex.value = 2;
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: controller.selectedIndex.value == 3
                      ? Colors.blue
                      : Colors.grey,
                ),
                onPressed: () {
                  controller.selectedIndex.value = 3;
                },
              ),
            ],
          ),
        );
      }),
      body: Obx(() {
        return controller.screens[controller.selectedIndex.value];
      }),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomePage(),
    Container(color: Colors.blue),
    Container(color: Colors.orange),
    Container(color: Colors.indigo)
  ];
}
