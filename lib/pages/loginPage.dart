import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 62.h,
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset('assets/logo.png')),
          SizedBox(
            height: 38.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'USERNAME',
                  style: sarala40016,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.w))),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: styleHintText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.w)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'PASSWORD',
                  style: sarala40016,
                ),
                SizedBox(
                  height: 6.h,
                ),
                Container(
                  width: 300.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.w))),
                  child: TextFormField(
                    controller: passwordController,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            if (showPassword) {
                              setState(() {
                                showPassword = false;
                              });
                            } else {
                              setState(() {
                                showPassword = true;
                              });
                            }
                          },
                          child: const Icon(Icons.remove_red_eye_rounded)),
                      hintText: 'Masukkan Password',
                      hintStyle: styleHintText,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.w)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 88.h,
                ),
                GestureDetector(
                  child: Container(
                    width: 300.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: lightColor.withOpacity(0.3),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset: const Offset(0, 4),
                        ),
                      ],
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(50.w),
                    ),
                    child: const Center(
                      child: Text(
                        'LOGIN',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
