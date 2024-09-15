import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parklane/Auth_screens/login_screen.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {


  changeScreen(){
    Future.delayed(Duration(seconds: 3),(){
      Get.to(()=>LoginScreen());
    },
    );
  }
@override
  void initState() {
    // TODO: implement initState
  changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
image: DecorationImage(
  image: AssetImage("assets/images/3.png",),fit: BoxFit.contain
)
      ),
    );
  }
}
