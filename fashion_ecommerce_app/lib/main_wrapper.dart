import 'package:animate_do/animate_do.dart';
import 'package:bottom_bar_matu/bottom_bar_matu.dart';
import 'package:fashion_ecommerce_app/screens/Drawer_screen.dart';
import 'package:fashion_ecommerce_app/screens/Favoritepage.dart';
import 'package:fashion_ecommerce_app/screens/account_screen.dart';
import 'package:fashion_ecommerce_app/screens/map.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../screens/cart.dart';
import '../screens/home.dart';
import '../screens/search.dart';
import '../utils/constants.dart';

class MainWrapper extends StatefulWidget {
  const MainWrapper({super.key});

  @override
  State<MainWrapper> createState() => _MainWrapperState();
}

class _MainWrapperState extends State<MainWrapper> {
  int _index = 0;
  bool isSearchActive = false;
  

 

  List<Widget> screens = [
    const Home(),
    const Search(),
  ];

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: isSearchActive
      ? FadeIn(
          delay: const Duration(milliseconds: 300),
          child: const Text(
            "Search",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        )
      : FadeIn(
          delay: const Duration(milliseconds: 300),
          child: const Text(
            "Home",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black),
          ),
        ),
  backgroundColor: Colors.white,
  elevation: 0,
  leading: IconButton(
    onPressed: () {
      Navigator.push(context, 
      MaterialPageRoute(builder: (context) =>   const NavBar(),
      ),
     );
    },
    icon: const Icon(
      Icons.menu,
      color: Colors.black,
      size: 30,
    ),
  ),
  actions: [
    IconButton(
      onPressed: () {
        setState(() {
          isSearchActive = !isSearchActive;
        });
      },
      icon: isSearchActive
          ? const Icon(
              LineIcons.searchMinus,
              color: Colors.black,
              size: 30,
            )
          : const Icon(
              LineIcons.search,
              color: Colors.black,
              size: 30,
            ),
    ),
    Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: const Icon(
          LineIcons.shoppingBag,
          color: Colors.black,
          size: 30,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Cart(),
            ),
          );
        },
      ),
    ),
  ],
),
      body: isSearchActive ? const Search() : const Home(),
      bottomNavigationBar: BottomBarBubble(
        color: primaryColor,
        selectedIndex: _index,
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.explore),
          BottomBarItem(iconData: Icons.favorite),
          BottomBarItem(iconData: Icons.settings),
        ],
        onSelect: (index) {
          setState(() {
            _index = index;
          });
          if (index == 0){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) =>  const MainWrapper(),
              ),
              );
          }
          if (index == 3){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const AccountScreen(),
              ),);
          }
          if (index == 1){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const MapsPage(),
              ),);
          }
        if (index == 2){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => const FavoriteItemsPage(),
              ),);
          }
        },
      ),
    );
  }
}
