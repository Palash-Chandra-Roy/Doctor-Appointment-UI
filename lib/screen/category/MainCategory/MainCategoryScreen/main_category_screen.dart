import 'package:doctor_appointment/screen/category/MainCategory/Controller/main_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../appointment/appointmentscreen/appointment_screen.dart';
import '../../../doctors/doctorscreen/doctors_screen.dart';
import '../../../home/screenitem/homescreen/home_screen.dart';
import '../../../profile/profilescreen/profile_screen.dart';
import '../../../report/reportscreen/report_screen.dart';

class MainCategoryScreen extends StatelessWidget {
   MainCategoryScreen({Key? key}) : super(key: key);


   final MainCategoryController _mainCategoryController =Get.put(MainCategoryController());

  final List _page=[
    DoctorsScreen(),
    AppointmentScreen(),
    HomeScreen(),
    ReportScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mainCategoryController.categoryKey,
      body: Obx(()=>_page[_mainCategoryController.isSelectedIndex.value]),
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
                  notItem: "Doctor",
                  isSelect: _mainCategoryController.isSelectedIndex.value==0
                  ?true
                  :false,
                  image: _mainCategoryController.isSelectedIndex.value==0?"assets/images/Doctors.png":"assets/images/Doctors.png",
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=0;
                  }),
              customBottomIcon(
                  index: 1,
                  notItem: "Appt",
                  isSelect: _mainCategoryController.isSelectedIndex.value==1
                  ?true
                  :false,
                  image: _mainCategoryController.isSelectedIndex.value==1?"assets/images/appticon.png":"assets/images/appticon.png",
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=1;
                  }),
              CircleAvatar(
                radius: 25,
                backgroundColor: const Color(0xFF7E22CD),
                child: customBottomIcon(
                  index: 2,
                  notItem: "",
                  isSelect: _mainCategoryController.isSelectedIndex.value==2
                    ?true
                    :false,
                  image: _mainCategoryController.isSelectedIndex.value==2?"assets/images/homeicons.png":"assets/images/homeicons.png",
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=2;
                  }),
              ),
              customBottomIcon(
                  index: 3,
                  notItem: "Report",
                  isSelect: _mainCategoryController.isSelectedIndex.value==3
                  ?true
                  :false,
                  image: _mainCategoryController.isSelectedIndex.value==3?"assets/images/reporticon.png":"assets/images/reporticon.png",
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=3;
                  }),
              customBottomIcon(
                  index: 4,
                  notItem:"Profile",
                  isSelect: _mainCategoryController.isSelectedIndex.value==4
                  ?true
                  :false,
                  image: _mainCategoryController.isSelectedIndex.value==4?"assets/images/profileicon.png":"assets/images/profileicon.png",
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=4;
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
      //     _mainCategoryController.isSelectedIndex.value=2;
      //   },child:Icon(Icons.home),
      // ),
    );
  }
}

Widget customBottomIcon(
    {
      required int index,
      required isSelect,
      required String  notItem,
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
          // notItem==0
          //     ?SizedBox()
          //     :Positioned(
          //   right: 50,
          //   top: 50,
          //
          //   child:
          //   Container(
          //     width: 20,
          //     height:20,
          //     decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: Colors.white,
          //         border:Border.all(color: Colors.green)
          //     ),
          //     child:
              Text(
                notItem,
                maxLines: 1,
                style: const TextStyle(fontSize: 10,color: Colors.amber,),
                textAlign: TextAlign.center,
              ),
            //),
          //)
        ],
      ),
    ),
  );
}