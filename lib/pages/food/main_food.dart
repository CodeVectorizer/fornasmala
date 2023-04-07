import 'package:flutter/material.dart';
import 'package:fornasmala/pages/food/cart_food.dart';
import 'package:fornasmala/pages/food/profile_food.dart';
import 'package:fornasmala/widgets/bottom_bar_ui.dart';

import 'home_food.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage>
    with SingleTickerProviderStateMixin {
  int selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    setState(() {
      _pageController =
          PageController(initialPage: selectedIndex, keepPage: true);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          setState(() => selectedIndex = index);
        },
        children: const [HomeFoodPage(), CartFoodPage(), ProfileFoodPage()],
      ),
      bottomNavigationBar: UIBottomBar(
        indexing: selectedIndex,
        pageController: _pageController,
      ),
    );
  }
}
