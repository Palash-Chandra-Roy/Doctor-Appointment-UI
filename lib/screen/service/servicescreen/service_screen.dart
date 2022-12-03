import 'package:doctor_appointment/screen/service/servicemodel/service_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title:  const Text("Service",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  Row(
            children: const [
              Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFF7E22CD),),
              Text("Back",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding:const EdgeInsets.all(16),
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 20,
            childAspectRatio: 2/3,
            mainAxisSpacing: 20,
            crossAxisCount: 3
          ),
              itemCount: 12,
              itemBuilder: (context ,index){
            return Container(
              height: 105,
              width: 105,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)),
                  color: Color(0xFFFFFFFF)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:  MainAxisAlignment.center,
                children: [
                  Image.asset(serviceItem[index].image,color: const Color(0xFF7E22CD),
                    fit: BoxFit.cover,
                  height: 30,
                  width: 30,
                  ),
                  const SizedBox(height: 12,),
                  Text(serviceItem[index].title,style: const TextStyle(fontWeight: FontWeight.bold,color: Color(0xFF0F172A),fontSize: 12),)
                ],
              ),
            );
              })
          ),
        ),
    );
  }
}
