import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/singin/singin_screen/singin_screnn.dart';
import 'package:doctor_appointment/screen/singup/singup_controller/controller.dart';
import 'package:doctor_appointment/widgets/custom_main_button.dart';
import 'package:doctor_appointment/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SingUpScreen extends StatelessWidget {
   SingUpScreen({Key? key}) : super(key: key);

   SingUpController _singUpController =SingUpController();
  TextEditingController _nameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _passwordController =TextEditingController();

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
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const SizedBox(
                height: 88,
              ),
              const Text(
                "Create Account",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Color(0xFF0F172A)),
              ),
              const SizedBox(height: 29,),
              CustomTextField(
                controller: _nameController,
                fillColor: const Color(0xFFFAF5FF),
                filled: true,
                prefixIcon: const Icon(Icons.person,size: 14,color: Color(0xFF7E22CD),),
                hintText: "Enter Your Name",
                keyboardType: TextInputType.name,
                validator: (value){
                  if(value==null||value.isEmpty){
                    return "Please Enter your name";
                  }else{
                    return null ;
                  }
                },
              ),
              const SizedBox(height: 12,),
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
              const SizedBox(height: 12,),
              CustomTextField(
                prefixIcon: const Icon(Icons.lock,color: Color(0xFF7E22CD),size: 14,),
                filled: true,
                fillColor: const Color(0xFFFAF5FF),
                hintText: "Passowrd",
                controller: _passwordController,
                validator: (value){
                  if(value ==null|| value.isEmpty){
                    return "Please Enter Your Password";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 12,),
              CustomTextField(
                prefixIcon: const Icon(Icons.lock,color: Color(0xFF7E22CD),size: 14,),
                filled: true,
                fillColor: const Color(0xFFFAF5FF),
                hintText: "Confirm Passowrd",
                controller: _passwordController,
                validator: (value){
                  if(value ==null|| value.isEmpty){
                    return "Please Enter Confirm Your Password";
                  }else{
                    return null;
                  }
                },
              ),
              const SizedBox(height: 12,),
              CheckboxListTile(
                value: _singUpController.check.value,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(
                    width: 2,color: Color(0xFF7E22CD)
                )),
                onChanged: (value){
                  if(_singUpController.check.value==false){
                    _singUpController.check.value=true;
                  }else{
                    _singUpController.check.value=false;
                  }
                },
                title: const Text("Terms & Condition",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color(0xFF0F172A)),),
                controlAffinity: ListTileControlAffinity.leading,
                activeColor:const Color(0xFF7E22CD),
              ),
              const SizedBox(height: 12,),
              CustomButton(
                  color: Color(0xFF7E22CD),
                  textColor: Colors.white,
                  buttonText:" Sing Up",
                  onPressed: (){
                    Get.to(SingInScreen());
                  }),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an Account?",style: TextStyle(fontSize: 14, color: Color(0xFF0F172A)),),
                  const SizedBox(width: 8,),
                  InkWell(
                    onTap: (){
                      Get.back();
                    },
                    child: const Text('Sing In!',style: TextStyle(fontSize: 14,color: Color(0xFF7E22CD),fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
