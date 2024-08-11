import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // เพิ่มการนำเข้า

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 7)).then((value) {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => const MainWrapper()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/images/order.json', // เปลี่ยนเส้นทางไฟล์เป็นตำแหน่งที่คุณเก็บไฟล์ Lottie JSON ของคุณ
          width: 400, // กำหนดความกว้างของแอนิเมชัน
          height: 600, // กำหนดความสูงของแอนิเมชัน
        ),
      ),
    );
  }
}