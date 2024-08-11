import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:fashion_ecommerce_app/screens/account_screen.dart';
import 'package:fashion_ecommerce_app/screens/map.dart';
import 'package:fashion_ecommerce_app/utils/constants.dart';
import 'package:fashion_ecommerce_app/widget/favoriteitem.dart';
import 'package:flutter/material.dart';
import 'package:fashion_ecommerce_app/data/app_data.dart';

class FavoriteItemsPage extends StatelessWidget {
  const FavoriteItemsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body: ListView.builder(
  shrinkWrap: true, // ช่วยให้ ListView ขยายตามเนื้อหา
  physics: const BouncingScrollPhysics(), // เพิ่มการนิยมเมื่อเลื่อน ListView
  scrollDirection: Axis.vertical, // กำหนดแนวที่เลื่อนเป็นแนวตั้ง
  itemCount: favoriteItems.length,
  itemBuilder: (context, index) {
    final item = favoriteItems[index];
    return FavoriteItem(item: item, onDelete: () {
    });
  },
),


      bottomNavigationBar: BottomBarBubble(
        color: primaryColor,
        selectedIndex: 2, // กำหนด index ให้เป็น 2 เพื่อเลือกแท็บ "Favorite"
        items: [
          BottomBarItem(iconData: Icons.home),
          BottomBarItem(iconData: Icons.explore),
          BottomBarItem(iconData: Icons.favorite),
          BottomBarItem(iconData: Icons.settings),
        ],
        onSelect: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MainWrapper()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MapsPage()),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountScreen()),
            );
          }
        },
      ),
    );
  }
}
