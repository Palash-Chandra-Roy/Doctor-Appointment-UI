import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/onbording/onbording_screen/onbording_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Get.to(OnBordingScreen());
    // Navigator.push(context, MaterialPageRoute(builder: (_)=>OnBordingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
   SizeConfig().init(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Color(0xFF9333EA),
            body: Center(
                child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/getting.png"))),
            )
            )
        )
    );
  }
}
