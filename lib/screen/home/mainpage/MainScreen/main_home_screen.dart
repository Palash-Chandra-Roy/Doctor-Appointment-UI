
import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/home/mainpage/Controller/main_home_controller.dart';
import 'package:doctor_appointment/screen/home/screenitem/homescreen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../appointment/appointmentscreen/appointment_screen.dart';
import '../../../doctors/doctorscreen/doctors_screen.dart';
import '../../../profile/profilescreen/profile_screen.dart';
import '../../../report/reportscreen/report_screen.dart';

class MainHomeScreen extends StatelessWidget {
   MainHomeScreen({Key? key}) : super(key: key);

  final MainHomeController _mainHomeController=Get.put(MainHomeController());

  final List _page=[
    DoctorsScreen(),
    AppointmentScreen(),
    HomeScreen(),
    ReportScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      key: _mainHomeController.mainKey,
      body: Obx(()=>_page[_mainHomeController.isSelectedIndex.value]),
      bottomNavigationBar: Container(
      //margin:  const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.only(top: 5),
        decoration: const BoxDecoration(
          color: Color(0xFFD9D9D9),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
        ),
        height: 80,
        child: Obx(()=> ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                customBottomIcon(
                    index: 0,
                    notItem: 0,
                    isSelect: _mainHomeController.isSelectedIndex.value==0
                    ?true
                    :false,
                    image: _mainHomeController.isSelectedIndex.value==0?"assets/images/Doctors.png":"assets/images/Doctors.png",
                    onTap: (){
                      _mainHomeController.isSelectedIndex.value=0;
                    }),
                customBottomIcon(
                    index: 1,
                    notItem: 0,
                    isSelect: _mainHomeController.isSelectedIndex.value==1
                    ?true
                    :false,
                    image: _mainHomeController.isSelectedIndex.value==1?"assets/images/appticon.png":"assets/images/appticon.png",
                    onTap: (){
                      _mainHomeController.isSelectedIndex.value=1;
                    }),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: const Color(0xFF7E22CD),
                    child: customBottomIcon(
                      index: 2,
                      notItem: 1,
                      isSelect: _mainHomeController.isSelectedIndex.value==2
                        ?true
                        :false,
                      image: _mainHomeController.isSelectedIndex.value==2?"assets/images/homeicons.png":"assets/images/homeicons.png",
                      onTap: (){
                        _mainHomeController.isSelectedIndex.value=2;
                      }),
                  ),
                  customBottomIcon(
                    index: 3,
                    notItem: 1,
                    isSelect: _mainHomeController.isSelectedIndex.value==3
                      ?true
                      :false,
                    image: _mainHomeController.isSelectedIndex.value==3?"assets/images/reporticon.png":"assets/images/reporticon.png",
                    onTap: (){
                      _mainHomeController.isSelectedIndex.value=3;
                    }),
                customBottomIcon(
                    index: 4,
                    notItem:1,
                    isSelect: _mainHomeController.isSelectedIndex.value==4
                        ?true
                        :false,
                    image: _mainHomeController.isSelectedIndex.value==4?"assets/images/profileicon.png":"assets/images/profileicon.png",
                    onTap: (){
                      _mainHomeController.isSelectedIndex.value=4;
                    }),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: const Color(0xFF7E22CD),
      //   onPressed: (){
      //     _mainHomeController.isSelectedIndex.value=2;
      //   },child:Icon(Icons.home),
      // ),
    );
  }
}


Widget customBottomIcon(
{
  required int index,
  required isSelect,
required int notItem,
required String image,
required VoidCallback onTap}){
  return Padding(padding: const EdgeInsets.only(bottom: 10),
  child: InkWell(
      onTap: onTap,
    child: Stack(
      children: [
        Image.asset(
         image,
          fit: BoxFit.fill,
          height:20 ,
        ),
        notItem==0
            ?SizedBox()
            :Positioned(
          right: 50,
            top: 50,
            child: Container(
              width: 20,
              height:20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border:Border.all(color: Colors.green)
              ),
              child: Text(
                "$notItem",
                maxLines: 1,
                style: const TextStyle(fontSize: 10,color: Colors.amber,overflow: TextOverflow.ellipsis),
                textAlign: TextAlign.center,
              ),
            ),
        )
      ],
    ),
  ),
  );
}