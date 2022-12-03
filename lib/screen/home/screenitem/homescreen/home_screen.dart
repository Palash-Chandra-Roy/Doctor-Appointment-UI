import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/bottomnavbar/navigator/bottomnavbar.dart';

import 'package:doctor_appointment/screen/doctors/doctorscreen/doctors_screen.dart';
import 'package:doctor_appointment/screen/generalmedicine/generalscreen/general_medicine.dart';
import 'package:doctor_appointment/screen/home/mainpage/Controller/main_home_controller.dart';
import 'package:doctor_appointment/screen/home/mainpage/MainScreen/main_home_screen.dart';
import 'package:doctor_appointment/screen/profile/profilescreen/profile_screen.dart';
import 'package:doctor_appointment/screen/service/servicescreen/service_screen.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../category/ScreenItem/categoryscreen/category_screen.dart';
import '../homecontroller/home_controller.dart';
import '../model/home_model.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final HomeController _homeController = Get.put(HomeController());
  final MainHomeController _mainHomeController = Get.put(MainHomeController());

  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Future.delayed(Duration(seconds: 0), () {
      _homeController.isLoaderVisible.value = false;
    });
    return Scaffold(
        backgroundColor: const Color(0xFFFAF5FF),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Color(0xFF7E22CD)),
          title: const Text(
            "Hello,Ishtiuq",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF7E22CD),
            ),
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xFFFAF5FF),
          child: ListView(
            padding: const EdgeInsets.all(10.0),
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  "Home",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF818181)),
                ),
              ),
              ListTile(
                leading: Image.asset("assets/images/homeIcon.png"),
                title: const Text("Home"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/share.png"),
                title: const Text("DashBoard"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.coffee),
                title: const Text("Report"),
                onTap: () {},
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: const [
                    Text(
                      "Book Appointment",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF818181)),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Icon(
                      Icons.more_vert,
                      color: Color(0xFF818181),
                    )
                  ],
                ),
              ),
              ListTile(
                leading: const Icon(Icons.photo_album),
                title: const Text("Doctors"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.apps),
                title: const Text("Specialties"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.bolt),
                title: const Text("Appointment"),
                onTap: () {},
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Book Appointment",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF818181)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_filled),
                title: const Text("Manages Appt."),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/template.png"),
                title: const Text("Appointment"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/Union.png"),
                title: const Text("Find Us"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/folder.png"),
                title: const Text("Contact Us"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/profileIcons.png"),
                title: const Text("Health Tip"),
                onTap: () {},
              ),
              ListTile(
                leading: Image.asset("assets/images/mouse.png"),
                title: const Text(
                  "My Profile",
                  style: TextStyle(color: Color(0xFF7E22CD)),
                ),
                onTap: () {
                  Get.to(ProfileScreen());
                },
              ),
              ListTile(
                leading: Image.asset("assets/images/options.png"),
                title: const Text("Settings"),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    _mainHomeController.isSelectedIndex.value = 2;
                    Get.to(MainHomeScreen());
                  },
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 26,
                      ),
                      const Text(
                        "Find Your Medical \nSolution! ",
                        style: TextStyle(
                            fontSize: 24,
                            color: Color(0xFF0F172A),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            suffixStyle: const TextStyle(fontSize: (18)),
                            hintText: "Search",
                            filled: true,
                            fillColor: const Color(0xFFFFFFFF),
                            prefixIcon: const Icon(
                              Icons.search,
                              size: 18,
                              color: Color(0xFF0F172A),
                            ),
                            prefixStyle: const TextStyle(fontSize: (18)),
                            hintStyle: const TextStyle(
                              fontSize: (18),
                              color: Color(0xFF0F172A),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.all(16),
                        height: 150,
                        width: 338,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4F46E5),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 21,
                            ),
                            const Text(
                              "Doctor Appointment",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                  color: Colors.white),
                            ),
                            const Text(
                              "Search Your Doctor and book an Appointment here",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 24,
                              width: 88,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Colors.white,
                              ),
                              child: const Center(
                                  child: Text(
                                "Book Appointment",
                                style: TextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF7E22CD)),
                              )),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Center(
                        child: DotsIndicator(
                          dotsCount: _homeController.totalDots,
                          position: _homeController.currentPosition,
                          decorator: const DotsDecorator(
                              activeColor: Color(0xFF7E22CD),
                              size: Size.square(9.0),
                              activeSize: Size(18.0, 9.0),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              color: Color(0xFFE5E5E5)),
                          onTap: (position) {
                            _homeController.totalDots == position;
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Category (Specialties)",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF0F172A)),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(CategoryScreen());
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0F172A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF7E22CD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 160,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listCategory.length,
                          itemBuilder: (context, index) => Card(
                            child: Column(
                              children: [
                                Image.asset(
                                  listCategory[index].image,
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 125,
                                ),
                                Container(
                                  height: 50,
                                  width: 125,
                                  decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                      color: Color(0xFF7E22CD)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        listCategory[index].title,
                                        style: const TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      Text(
                                        listCategory[index].subTitle,
                                        style: const TextStyle(
                                            fontSize: 8,
                                            color: Color(0xFFFFFFFF)),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Service",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF0F172A)),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(ServiceScreen());
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0F172A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF7E22CD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 103,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: listService.length,
                          itemBuilder: (context, index) => Card(
                            child: GestureDetector(
                              onTap: () {
                                 Get.to(GeneralMedicineScreen());
                              },
                              child: Container(
                                height: 103,
                                width: 103,
                                decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color(0xFF7E22CD)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      listService[index].image,
                                      color: Colors.white,
                                      height: 30,
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 11,
                                    ),
                                    Text(
                                      listService[index].title,
                                      style: const TextStyle(
                                          fontSize: 12, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Top Doctors ",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xFF0F172A)),
                          ),
                          InkWell(
                            onTap: () {
                              // Get.to(DoctorsScreen());
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 9,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF0F172A)),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Container(
                                  height: 16,
                                  width: 16,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF7E22CD),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 110,
                        child: Card(
                            child: Container(
                          padding: const EdgeInsets.only(top: 14, left: 14),
                          height: 101,
                          width: 328,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/images/drImage.png",
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dr. Ishtiuq Ahmed Chowdhury",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF0F172A),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text("General Practitioner ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF0F172A))),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    "Somerian Clinic-Dubai",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF0F172A)),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 12,
                                          width: 27,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.red),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "4.5",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 8),
                                              ),
                                              SizedBox(width: 2.5),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 8,
                                              ),
                                            ],
                                          )),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Icon(
                                        Icons.access_time_rounded,
                                        color: Color(0xFF7E22CD),
                                        size: 8,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      const Text(
                                        "10:00 AM -8.45 PM",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF7E22CD)),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 110,
                        child: Card(
                            child: Container(
                          padding: const EdgeInsets.only(top: 14, left: 14),
                          height: 101,
                          width: 328,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  "assets/images/drImage.png",
                                  height: 60,
                                  width: 60,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Dr. Ishtiuq Ahmed Chowdhury",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Color(0xFF0F172A),
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text("General Practitioner ",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Color(0xFF0F172A))),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  const Text(
                                    "Somerian Clinic-Dubai",
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xFF0F172A)),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 12,
                                          width: 27,
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(10),
                                              ),
                                              color: Colors.red),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                "4.5",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                    fontSize: 8),
                                              ),
                                              SizedBox(width: 2.5),
                                              Icon(
                                                Icons.star,
                                                color: Colors.white,
                                                size: 8,
                                              ),
                                            ],
                                          )),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      const Icon(
                                        Icons.access_time_rounded,
                                        color: Color(0xFF7E22CD),
                                        size: 8,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      const Text(
                                        "10:00 AM -8.45 PM",
                                        style: TextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF7E22CD)),
                                      )
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                      ),
                    ],
                  ),
                ),
              ]),
        )));
  }
}
