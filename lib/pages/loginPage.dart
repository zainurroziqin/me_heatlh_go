import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cLogin.dart';
import 'package:me_heatlh_go/pages/home.dart';
import 'package:me_heatlh_go/pages/registerPage.dart';

import '../widget/dialog.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool showPassword = true;

  final cLogin = Get.put(CLogin());

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    login() async {
      if (formKey.currentState!.validate()) {
        await cLogin.login(emailController.text, passwordController.text);
        if (cLogin.successLogin) {
          // ignore: use_build_context_synchronously
          DInfo.dialogSuccess(context, 'Berhasil Login');
          // ignore: use_build_context_synchronously
          DInfo.closeDialog(context, actionAfterClose: () {
            Get.to(() => const HomePage());
          });
        } else {
          // ignore: use_build_context_synchronously
          DInfo.dialogError(context, 'Gagal Login');
          // ignore: use_build_context_synchronously
          DInfo.closeDialog(context);
        }
      }
    }

    return Scaffold(
      backgroundColor: primariColor,
      body: SafeArea(
          child: Stack(
        children: [
          Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 64.h,
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset('assets/logo.png')),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32.w),
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
                        width: 320.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.w))),
                        child: TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Email',
                            hintStyle: styleHintText,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.w)),
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
                        width: 320.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            color: whiteColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.w))),
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
                                child: showPassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off)),
                            hintText: 'Masukkan Password',
                            hintStyle: styleHintText,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.w)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 64.h,
                      ),
                      GestureDetector(
                        onTap: () {
                          login();
                        },
                        child: Container(
                          width: 320.w,
                          height: 48.h,
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
                            borderRadius: BorderRadius.circular(48.w),
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
                      SizedBox(
                        height: 24.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Belum punya akun? ',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(RegisterPage());
                            },
                            child: const Text(
                              'Register',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Obx(() {
            if (cLogin.loading) {
              return showCustomLoadingDialog(context);
            }
            return const SizedBox.shrink();
          }),
        ],
      )),
    );
  }
}
