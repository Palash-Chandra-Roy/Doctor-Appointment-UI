import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/appointment/appointmentscreen/appointment_screen.dart';
import 'package:doctor_appointment/screen/doctors/doctorscreen/doctors_screen.dart';
import 'package:doctor_appointment/screen/profile/profilescreen/profile_screen.dart';
import 'package:doctor_appointment/screen/report/reportscreen/report_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../home/screenitem/homescreen/home_screen.dart';
import '../controller/controller.dart';

class BottomNavBar extends StatelessWidget {

  final _bottomNavBarController = Get.put(BottomNavBarController());

  @override
  Widget build(BuildContext context) {
      return GetBuilder<BottomNavBarController>(builder: (_bottomNavBarController){
        return Scaffold(
          body:SafeArea(
            child: IndexedStack(
                index: _bottomNavBarController.tabIndex.value,
                children: [
                  HomeScreen(),
                  DoctorsScreen(),
                  AppointmentScreen(),
                  ReportScreen(),
                  ProfileScreen(),
                ]
            ),
          ),
          bottomNavigationBar: Container(
            height: 60,
            decoration:  const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                color: Colors.white),
            child: BottomNavigationBar(
              elevation: 0,
              unselectedItemColor:  const Color(0xFF818181),
              selectedItemColor:  const Color(0xFFA020F0),
              onTap: _bottomNavBarController.changeTabIndex,
              currentIndex: _bottomNavBarController.tabIndex.value,
              type: BottomNavigationBarType.fixed,
              backgroundColor:  const Color(0xFFD9D9D9),
              items:const[
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_add_alt), label: "Doctors"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_search_sharp), label: "Appt"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_search_sharp), label: "Appt"),
                // BottomNavigationBarItem(
                //     icon: SizedBox(
                //         child: Material(
                //             elevation: 0,
                //             color: Color(0xFF7E22CD),
                //             borderRadius: BorderRadius.all(Radius.circular(50)),
                //             child: Padding(
                //               padding: EdgeInsets.all(12.0),
                //               child: Icon(Icons.home, color: Color(0xFF818181),),
                //             )))),
                BottomNavigationBarItem(icon: Icon(Icons.article), label: "Report"),
                BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
              ],
            ),
          ),
        );
      });
    }
}
