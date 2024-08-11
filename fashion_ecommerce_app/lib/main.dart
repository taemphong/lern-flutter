
import 'package:fashion_ecommerce_app/screens/login.dart';
import 'package:flutter/material.dart';

import '../utils/app_theme.dart';


void main() => runApp(
  
      MaterialApp(
        theme: AppTheme.appTheme,
        debugShowCheckedModeBanner: false,
        home: const LoginScreen(),
      ),
    );
