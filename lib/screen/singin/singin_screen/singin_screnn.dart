import 'package:doctor_appointment/contens/size_configs.dart';
import 'package:doctor_appointment/screen/singin/singin_controller/controller.dart';
import 'package:doctor_appointment/screen/singup/singup_screen/singup_screen.dart';
import 'package:doctor_appointment/widgets/custom_main_button.dart';
import 'package:doctor_appointment/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../bottomnavbar/navigator/bottomnavbar.dart';
import '../../forgot/forgot_screen/forgot_screen.dart';
import '../../home/screenitem/homescreen/home_screen.dart';

class SingInScreen extends StatelessWidget {
   SingInScreen({Key? key}) : super(key: key);

   SignInController _signInController =Get.put(SignInController());
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.white),
        title:  const Text("Back",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Color(0xFF7E22CD),),),
        leading: IconButton(
          onPressed: (){
            Get.back();
          },
          icon:  const Icon(Icons.arrow_back_ios_new_rounded,size: 14, color: Color(0xFF7E22CD),),
        ),
    ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  height: 240,
                  width: 240,
                  child: Image.asset("assets/images/sing in.png"),
                ),
              ),
              const SizedBox(height: 21,),
              const Text("Welcome Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xFF0F172A)),),
              const Text("Sign In to Continue",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Color(0xFF0F172A)),),
              const SizedBox(height: 41,),
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
              const SizedBox(height: 10,),
              CustomTextField(
                prefixIcon: const Icon(Icons.lock,color: Color(0xFF7E22CD),size: 14,),
                filled: true,
                fillColor: const Color(0xFFFAF5FF),
                hintText: "Password",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: CheckboxListTile(
                        value: _signInController.checkValue.value,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        side: MaterialStateBorderSide.resolveWith((states) => const BorderSide(
                          width: 2,color: Color(0xFF7E22CD)
                        )),
                        onChanged: (value){
                          if(_signInController.checkValue.value==false){
                            _signInController.checkValue.value=true;
                          }else{
                            _signInController.checkValue.value=false;
                          }
                        },
                      title: const Text("Remember Me",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Color(0xFF0F172A)),),
                      controlAffinity: ListTileControlAffinity.leading,
                      activeColor:const Color(0xFF7E22CD),
                    ),
                  ),
                  TextButton(onPressed: (){
                    Get.to(ForgotScreen());
                  },
                    child: const Text("Forgot Password?",style: TextStyle(fontSize: 14,color: Color(0xFF0F172A)
                    ),
                    )
                  ),
                ],
              ),
              const SizedBox(height: 12,),
              CustomButton(
                  color: const Color(0xFF7E22CD),
                  textColor: Colors.white,
                  buttonText: "Long In",
                  onPressed: (){
                    //Get.off(BottomNavBar());
                   Get.to(HomeScreen());

                  }),
              const SizedBox(height: 12,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an Account?",style: TextStyle(fontSize: 14, color: Color(0xFF0F172A)),),
                 const SizedBox(width: 8,),
                  InkWell(
                    onTap: (){
                      Get.to( SingUpScreen());
                    },
                    child: const Text('Sing Up!',style: TextStyle(fontSize: 14,color: Color(0xFF7E22CD),fontWeight: FontWeight.bold),),
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
