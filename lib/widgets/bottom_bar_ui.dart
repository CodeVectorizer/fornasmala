import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UIBottomBar extends StatefulWidget {
  int? indexing;
  final PageController? pageController;
  final Function(int index)? changePage;

  UIBottomBar({super.key, this.indexing, this.pageController, this.changePage});

  @override
  _UIBottomBarState createState() => _UIBottomBarState();
}

class _UIBottomBarState extends State<UIBottomBar> {
  // int selectedIndex = 0;

  final List menuBottom = [
    {'icon': Icons.home, 'label': 'Beranda'},
    {'icon': Icons.history_edu_rounded, 'label': 'Aktifitas'},
    {'icon': Icons.person, 'label': 'Akun'},
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      clipBehavior: Clip.antiAlias,
      child: SizedBox(
        height: 60,
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: Colors.grey,
                width: 0.5,
              ),
            ),
          ),
          child: BottomNavigationBar(
              currentIndex: widget.indexing!,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.orange,
              unselectedItemColor: Colors.grey,
              iconSize: 28,
              elevation: 0.0,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.shifting,
              onTap: (index) {
                setState(() {
                  widget.indexing = index;
                  widget.pageController?.animateToPage(index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                });
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: 'Beranda'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.shopping_cart_outlined),
                    label: 'Shopping Cart'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile')
              ]),
        ),
      ),
    );
  }
}
