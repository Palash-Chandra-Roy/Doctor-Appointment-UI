import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/forgot/forgot_controller/controller.dart';
import 'package:doctor_appointment/screen/singin/singin_screen/singin_screnn.dart';
import 'package:doctor_appointment/widgets/custom_main_button.dart';
import 'package:doctor_appointment/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ForgotScreen extends StatelessWidget {
   ForgotScreen({Key? key}) : super(key: key);

  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Back",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color(0xFF7E22CD),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 14,
            color: Color(0xFF7E22CD),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 141,),
              const Text(
                "Forgot Password",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xFF0F172A)),
              ),
              SizedBox(height: 32,),
              CustomTextField(
                controller: _emailController,
                hintText: "abc@gamil.com",
                prefixIcon: const Icon(Icons.email,size: 14,color: Color(0xFF7E22CD),),
                keyboardType:TextInputType.emailAddress,
                fillColor: const Color(0xFFFAF5FF),
                filled: true,
                validator:(value){
                  if(value==null || value.isEmpty){
                    return "Please Enter your Email";
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 12,),
              CustomButton(
                  color: Color(0xFF7E22CD),
                  textColor: Colors.white,
                  buttonText: "Submit",
                  onPressed: (){
                    Get.to(SingInScreen());
                  })
            ],
          ),
        ),
      ),
    );
  }
}
