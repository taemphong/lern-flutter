import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    fontFamily: "AlegreyaSans",
    brightness: Brightness.light,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontSize: 38,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(color: Colors.black, fontSize: 15),
      displayMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 17,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue),
      headlineSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
    ),
  );

  // สร้างธีมสำหรับ Dark Mode
  static ThemeData darkTheme = ThemeData(
    fontFamily: "AlegreyaSans",
    brightness: Brightness.dark, // กำหนดให้เป็น Dark Mode
    textTheme: const TextTheme(
      // กำหนดค่าสีต่าง ๆ สำหรับ Dark Mode ที่คุณต้องการ
      displayLarge: TextStyle(
        fontSize: 38,
        color: Colors.white, // เปลี่ยนสีข้อความใน Dark Mode
        fontWeight: FontWeight.w500,
      ),
      titleMedium: TextStyle(color: Colors.white, fontSize: 15),
      displayMedium: TextStyle(
        fontSize: 16,
        color: Colors.white, // เปลี่ยนสีข้อความใน Dark Mode
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        fontSize: 17,
        color: Colors.white, // เปลี่ยนสีข้อความใน Dark Mode
        fontWeight: FontWeight.w500,
      ),
      displaySmall: TextStyle(
        color: Colors.white, // เปลี่ยนสีข้อความใน Dark Mode
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue),
      headlineSmall: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
    ),
  );
}


