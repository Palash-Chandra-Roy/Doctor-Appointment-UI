
import 'package:flutter/material.dart';
class CustomDoctorWidgets extends StatelessWidget {
  const CustomDoctorWidgets({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: Column(
        children: [
          Card(
              child:Container(
                padding:  const EdgeInsets.only(top: 14,left: 14),
                height: 100,
                decoration:  const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset("assets/images/drImage.png",height: 60,width: 60,fit:BoxFit.cover,),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Text("Dr. Ishtiuq Ahmed Chowdhury",style: TextStyle(fontSize:14,color: Color(0xFF0F172A),fontWeight: FontWeight.bold
                        ),),
                        const SizedBox(height: 4,),
                        const Text("General Practitioner ",style: TextStyle(fontSize: 12,color: Color(0xFF0F172A))),
                        const SizedBox(height: 4,),
                        const Text("Somerian Clinic-Dubai",style: TextStyle(fontSize: 12,color: Color(0xFF0F172A)),),
                        const SizedBox(height: 4,),
                        Row(
                          children: const[
                            Icon(Icons.access_time_rounded,color: Color(0xFF0F172A),size: 8,),
                            SizedBox(width: 6,),
                            Text("10:00 AM -8.45 PM",style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold,color: Color(0xFF0F172A)),)
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),
          Container(
            height: 40,
            padding:const EdgeInsets.only(left: 14,right: 14),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 12,
                    width: 27,
                    decoration:  const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10),),color: Colors.red),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Text("4.5",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 8),),
                        SizedBox(width: 2.5),
                        Icon(Icons.star,color: Colors.white,size: 8,),
                      ],
                    )
                ),
                Container(
                  height: 24,
                  width: 88,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xFF7E22CD),
                  ),
                  child: const Center(
                      child: Text(
                        "Book Appointment",
                        style: TextStyle(
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFFFFFFF)),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
