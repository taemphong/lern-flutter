
import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen ({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{

  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 7)).then((value){
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => const MainWrapper()));
    });
  }
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox( 
        width: double.infinity,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ 
            Image(image: AssetImage("assets/images/B.png"),
            width: 700,
            ),
            SizedBox(
              height: 70.0,
            ),
            Center(
            child: Text(
              "wait a moment...",
              style: TextStyle(
                fontSize: 20.0, 
                fontWeight: FontWeight.bold, 
              ),
            ),
            ),
            SizedBox(
              height: 20.0,
          ),
            SpinKitPouringHourGlass(
              color: Colors.orange,
              size: 50.0,
              )
          ],
        ),
      ),
    );

  }
}