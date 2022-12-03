import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/category/MainCategory/Controller/main_category_controller.dart';
import 'package:doctor_appointment/screen/category/MainCategory/MainCategoryScreen/main_category_screen.dart';
import 'package:doctor_appointment/screen/category/ScreenItem/controller/category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../model/category_model.dart';


class CategoryScreen extends StatelessWidget {
   CategoryScreen({Key? key}) : super(key: key);

  final CategoryController _categoryController =Get.put(CategoryController());
  final MainCategoryController _mainCategoryController=Get.put(MainCategoryController());

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Future.delayed(Duration(seconds: 2),(){
      _categoryController.isLoaderVisible.value=false;
    });

    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title:  const Text("Category (Specialties)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        // leading: IconButton(
        //   onPressed: (){
        //     Get.back();
        //   },
        //   icon:  Row(
        //     children: const [
        //       Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFF7E22CD),),
        //       Text("Back",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        //     ],
        //   ),
        // ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: GridView.builder(
              gridDelegate:const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2/3,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
              ),
              itemCount: 6,
              itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    _mainCategoryController.isSelectedIndex.value=2;
                    Get.to(MainCategoryScreen());
                  },
                  child: Container(
                    height: 200,
                    child: Column(
                      children: [
                        Image.asset(categoryItem[index].image,
                          fit: BoxFit.cover,
                          height: 127,
                          width: 160,
                        ),
                        Container(
                          height: 64,
                          width: 160,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),color: Color(0xFFFFFFFF)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(categoryItem[index].title,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Color(0xFF0F172A)),),
                              Text(categoryItem[index].subTitle,style: const TextStyle(fontSize: 10,color: Color(0xFF0F172A)),),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
