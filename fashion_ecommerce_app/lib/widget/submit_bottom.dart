import 'package:fashion_ecommerce_app/utils/constantsOTP.dart';
import 'package:flutter/material.dart';


class SubmitButton extends StatelessWidget {
  final String text;
  final Function() onpress;
  const SubmitButton({
    super.key,
    required this.text,
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.orange, backgroundColor: Colors.white, 
        minimumSize: const Size(double.infinity, 50),
        padding: const EdgeInsets.symmetric(vertical: 15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: kprimaryColor,
        elevation: 10,
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}