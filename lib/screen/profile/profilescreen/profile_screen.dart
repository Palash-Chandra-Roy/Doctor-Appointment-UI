import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../home/screenitem/homescreen/home_screen.dart';



class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
     // backgroundColor: const Color(0xFFF5F5F5),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            // leading: InkWell(
            //   onTap: (){
            //     Get.to(HomeScreen());
            //   },
            //   child: Row(
            //     children: const [
            //       Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFFFFFFFF),),
            //       Text("Back",style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold,color: Color(0xFFFFFFFF),),),
            //     ],
            //   ),
            // ),
            backgroundColor: const Color(0xFFFAF5FF),
            expandedHeight: 335,
            pinned: true,
            flexibleSpace:FlexibleSpaceBar(
              background: Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft:Radius.circular(30),
                        bottomRight: Radius.circular(30)),color: Color(0xFF7E22CD)
                ),
                // color: const Color(0xFF7E22CD),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20,),
                    CircleAvatar(
                      child: Image.asset("assets/images/drImage.png",
                        fit: BoxFit.cover,
                        height: 130,width: 130,),
                      radius: 40,
                    ),
                    const SizedBox(height: 12,),
                    const Text("Dr. Ishtiuq Ahmed Chowdhury",style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF)),),
                    const Text("General Practitioner ",style: TextStyle(fontSize: 14,color: Color(0xFFFFFFFF)),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Icon(Icons.star,color: Colors.white,size: 12,),
                        SizedBox(width:5),
                        Text("4.9(4255 Reviews)",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 12),),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Container(
                      height: 24,
                      width: 88,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
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
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Container(
                    height: 90,
                    width: 328,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("General Practitioner",style: TextStyle(fontSize:12,color: Color(0xFF0F172A) ),),
                            const Text("Somerian Health Clinic",style: TextStyle(fontSize:12,color: Color(0xFF0F172A) ),),
                            const SizedBox(height: 8,),
                            RatingBar.builder(
                              itemCount: 5,
                                initialRating: 5,
                                itemSize: 16,
                                direction: Axis.horizontal,
                                itemBuilder: (context,index)=>const Icon(
                              Icons.star,color: Color(0xFF7E22CD),),
                                onRatingUpdate: (rating){
                              return ;
                                })
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12,),
                  Container(
                    height:156 ,
                    width: 328,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:const [
                            Text("Biography",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF0F172A)),),
                            SizedBox(height: 8,),
                            Text("Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and five centuries, but also the leap into electronic typesetting,remainging essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing."
                                ,style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Color(0xFF0F172A)),)
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
