import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/doctors/controller/contorller.dart';
import 'package:doctor_appointment/widgets/custom_doctor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DoctorsScreen extends StatelessWidget {
 DoctorsScreen({Key? key}) : super(key: key);

 DoctorController _doctorController =Get.put(DoctorController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title:const Text("Doctors",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        // leading: IconButton(
        //   onPressed: (){
        //     Get.back();
        //   },
        //   icon:  Row(
        //     children:const [
        //        Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFF7E22CD),),
        //       Text("Back",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        //     ],
        //   ),
        // ),
      ),
      backgroundColor: const Color(0xFFFAF5FF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                   itemCount: _doctorController.items.length,
                    itemBuilder: (context, index)=>Obx(() => InkWell(
                      onTap: (){
                        _doctorController.currentIndex.value =index;
                      },
                      child: Container(
                        height: 24,
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration:  BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(6),),
                            color: _doctorController.currentIndex.value ==index
                            ? const Color(0xFF7E22CD)
                                : const Color(0xFFFFFFFF),
                          border:Border.all(width: 1,color: const Color(0xFF7E22CD)),
                        ),
                        child:  Center(child: Text(
                       _doctorController.items[index]
                          ,style: TextStyle(fontSize: 8,color:
                        _doctorController.currentIndex.value == index
                        ?const Color(0xFFFFFFFF)
                            : const Color(0xFF7E22CD),
                        ),)),
                      ),
                    ))
                ),
              ),
              const SizedBox(height: 12,),
              const CustomDoctorWidgets(),
              const SizedBox(height: 12,),
              const CustomDoctorWidgets(),
              const SizedBox(height: 12,),
              const CustomDoctorWidgets(),
            ],
          ),
        ),
      ),

    );
  }
}
