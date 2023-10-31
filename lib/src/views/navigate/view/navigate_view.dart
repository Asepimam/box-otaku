import 'package:flutter/material.dart';
import 'package:box_otaku/core.dart';
import '../controller/navigate_controller.dart';

class NavigateView extends StatefulWidget {
  const NavigateView({Key? key}) : super(key: key);

  Widget build(context, NavigateController controller) {
    controller.view = this;

    return Scaffold(
      body: IndexedStack(
        index: controller.indexSelected,
        children: controller.pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
      ], currentIndex: controller.indexSelected, onTap: controller.setIndex),
    );
  }

  @override
  State<NavigateView> createState() => NavigateController();
}
