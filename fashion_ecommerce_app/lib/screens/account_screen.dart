
import 'package:animate_do/animate_do.dart';
import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:fashion_ecommerce_app/widget/setting_swicth.dart';
import 'package:fashion_ecommerce_app/widget/setting_item.dart';
import 'package:fashion_ecommerce_app/screens/editaccount_screen.dart';
import 'package:fashion_ecommerce_app/widget/forward_bottom.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // เริ่มค่า opacity เป็น 0 เพื่อให้มี Animation เข้า
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedOpacity(
        duration: const Duration(milliseconds: 500),
        opacity: opacity,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 600),
                  child: const Text(
                    "Account",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 650),
                  child: SizedBox(
                    width: double.infinity,
                    child: Row(
                      children: [
                        Image.asset("assets/images/B.png", width: 70, height: 70),
                        const SizedBox(width: 20),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Name",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        ForwardButton(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const EditAccountScreen(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 750),
                  child: const Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 500),
                  child: SettingItem(
                    title: "Language",
                    icon: Ionicons.earth,
                    bgColor: Colors.orange.shade100,
                    iconColor: Colors.orange,
                    value: "English",
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 20),
                // เพิ่ม FadeIn ที่นี่
                FadeIn(
                  duration: const Duration(milliseconds: 600),
                  child: SettingItem(
                    title: "Notifications",
                    icon: Ionicons.notifications,
                    bgColor: Colors.blue.shade100,
                    iconColor: Colors.blue,
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 20),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 700),
                  child: SettingSwitch(
                    title: "Dark Mode",
                    icon: Ionicons.earth,
                    bgColor: Colors.purple.shade100,
                    iconColor: Colors.purple,
                    value: isDarkMode,
                    onTap: (value) {
                      setState(() {
                        isDarkMode = value;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                // เพิ่ม FadeIn ที่นี่
                FadeInUp(
                  duration: const Duration(milliseconds: 800),
                  child: SettingItem(
                    title: "Help",
                    icon: Ionicons.nuclear,
                    bgColor: Colors.red.shade100,
                    iconColor: Colors.red,
                    onTap: () {},
                  ),
                ),
                const SizedBox(height: 100),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => const MainWrapper()
                      ),
                      );
                  },
                 style: ElevatedButton.styleFrom(
                 foregroundColor: Colors.black, backgroundColor: Colors.grey, // สีของข้อความบนปุ่ม
                 padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // ขนาดของปุ่ม
                 shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10), // รูปร่างขอบของปุ่ม
               ),
            ),
              child: const Text("GO SHOP",style: TextStyle(fontSize: 16,),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}