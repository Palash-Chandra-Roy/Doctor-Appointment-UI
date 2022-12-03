import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/onbording/controller/onbording_controller.dart';
import 'package:doctor_appointment/widgets/custom_main_button.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../singin/singin_screen/singin_screnn.dart';

class OnBordingScreen extends StatelessWidget {
  OnBordingScreen({Key? key}) : super(key: key);

  final _onbBoardingController = Get.put(OnbordingController());
  PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
                controller: _pageController,
                itemCount: _onbBoardingController.listData.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: (27),
                        ),
                        Center(
                          child: Image.asset(
                            _onbBoardingController.listData[index]["image"],
                            height: (300),
                            width: (300),
                          ),
                        ),
                        const SizedBox(
                          height: (26),
                        ),
                        Container(
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          height: (263),
                          decoration: const BoxDecoration(
                              color:Color(0xFF9333EA),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30),
                              )),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const SizedBox(height: 30,),
                              Text(
                                _onbBoardingController.listData[index]["title"],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              const SizedBox(
                                height: (16),
                              ),
                              Text(
                                _onbBoardingController.listData[index]["des"],
                                style:
                                const TextStyle(fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            Positioned(
              bottom: 80,
                right: 50,
                left: 50,
                child: Center(
                  child: Obx(()=>
                     DotsIndicator(
                      dotsCount: _onbBoardingController.listData.length,
                      position: _onbBoardingController.currentIndex.toDouble(),
                      decorator: const DotsDecorator(
                        activeColor: Colors.white,
                        size: Size.square(9.0),
                        activeSize: Size(20.0, 9.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        color: Colors.white,
                      ),
                      onTap: (position){
                        _onbBoardingController.totalDot==position;
                      },
                    ),
                  ),
                ),
            ),
            Positioned(
              bottom: 10,
              right: 50,
              left: 50,
              child: Center(
              child: CustomButton(
                  color: Colors.white,
                  textColor: Colors.black,
                  buttonText: "Get Started",
                  onPressed: () {
                    if (_onbBoardingController.currentIndex == 2) {
                      Get.to(SingInScreen());
                    } else {
                      _onbBoardingController.currentIndex +1;
                      Get.to(SingInScreen());
                    }
                  }),
            ),
            )
          ],
        ),
      ),
    );
  }
}
