import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/widgets/custom_doctor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class GeneralMedicineScreen extends StatelessWidget {
  const GeneralMedicineScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title:const Text("General Medicine",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  Row(
            children:const [
              Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFF7E22CD),),
              Text("Back",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: const [
              CustomDoctorWidgets(),
              SizedBox(height: 12,),
              CustomDoctorWidgets(),
              SizedBox(height: 12,),
              CustomDoctorWidgets(),
            ],
          ),
        ),
      ),
    );
  }
}
