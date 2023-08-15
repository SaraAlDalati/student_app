import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:student_app/view/screen/bottombar.dart';
import 'package:student_app/view/screen/calender/color.dart';

import '../../controller/loginstcontroller.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LoginController>(
        init: LoginController(),
        builder: (controller) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            // Padding(
            // padding: const EdgeInsets.symmetric(vertical: 30),
            // child:
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset("assets/icons/Studying-cuate (1).png"),
            ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 30),
            //   child:
            Text(
              "Welcome to It's School !",
              style: Theme.of(context).textTheme.headline4,
            ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                key: controller.formstate,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: controller.usernameController,
                        keyboardType: TextInputType.emailAddress,
                        validator: (text) {
                          return (text != null)
                              ? null
                              : "you dont use the @ char";
                        },
                        cursorColor: Color.fromARGB(255, 141, 168, 209),
                        cursorHeight: 20,
                        decoration: InputDecoration(
                          counterStyle:
                              const TextStyle(color: MyColors.royalBlue),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            child: const Text(
                              "Username",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: MyColors.royalBlue,
                              ),
                            ),
                          ),
                          hintText: "Enter your username",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 141, 168, 209),
                            fontFamily: 'Montserrat',
                            fontSize: 12.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(
                              color: MyColors.soLightBlue,
                            ),
                          ),
                          suffixIcon: const Icon(
                            Icons.person,
                            color: MyColors.royalBlue,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextFormField(
                        controller: controller.passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: controller.passwordVisible,
                        cursorColor: Color.fromARGB(255, 141, 168, 209),
                        cursorHeight: 20,
                        validator: (text) {
                          if (text!.length < 8) {
                            return "you have to enter 8 char";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          counterStyle:
                              const TextStyle(color: MyColors.royalBlue),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          label: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 14),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                                color: MyColors.royalBlue,
                              ),
                            ),
                          ),
                          hintText: "Enter your password",
                          hintStyle: TextStyle(
                            color: Color.fromARGB(255, 141, 168, 209),
                            fontFamily: 'Montserrat',
                            fontSize: 12.sp,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                const BorderSide(color: MyColors.royalBlue),
                          ),
                          suffixIcon: IconButton(
                            icon: Icon(
                              controller.passwordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: MyColors.royalBlue,
                            ),
                            onPressed: () => controller.changeVisible(),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: SizedBox(
                        height: 35.h,
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              BeveledRectangleBorder(
                                borderRadius: BorderRadius.circular(3),
                              ),
                            ),
                            elevation: MaterialStateProperty.all(10),
                            shadowColor:
                                MaterialStateProperty.all(Colors.black),
                            backgroundColor:
                                MaterialStateProperty.all(MyColors.royalBlue),
                            foregroundColor:
                                MaterialStateProperty.all(MyColors.soLightBlue),
                          ),
                          onPressed: () {
                            // do logic
                            // controller.loginButton();
                            Get.to(BottomBar());
                          },
                          child: Text(
                            "login",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
