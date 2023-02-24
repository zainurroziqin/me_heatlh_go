import 'package:d_info/d_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cLogin.dart';
import 'package:me_heatlh_go/pages/loginPage.dart';

import '../widget/dialog.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController umurController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController asalSekolahController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final cLogin = Get.put(CLogin());
  bool showPassword = true;
  String? _dropDownValue;

  register() async {
    if (formKey.currentState!.validate()) {
      if (_dropDownValue!.isNotEmpty) {
        await cLogin.regsiter(
            emailController.text,
            nameController.text,
            _dropDownValue!,
            umurController.text,
            passwordController.text,
            asalSekolahController.text);
      }
      if (cLogin.successRegister) {
        // ignore: use_build_context_synchronously
        DInfo.dialogSuccess(context, 'Berhasil Register');
        // ignore: use_build_context_synchronously
        DInfo.closeDialog(context, actionAfterClose: () {
          Get.to(() => const LoginPage());
        });
      } else {
        // ignore: use_build_context_synchronously
        DInfo.dialogError(context, 'Gagal Register');
        // ignore: use_build_context_synchronously
        DInfo.closeDialog(context);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                              'NAME',
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
                                controller: nameController,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan Nama',
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
                              'ASAL SEKOLAH',
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
                                controller: asalSekolahController,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan Asal Sekolah',
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
                              'JENIS KELAMIN',
                              style: sarala40016,
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Container(
                              width: 320.w,
                              height: 48.h,
                              decoration: BoxDecoration(
                                  color: whiteColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(24.w))),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                      value: 'Laki-laki',
                                      child: Text('Laki-laki'),
                                    ),
                                    DropdownMenuItem(
                                      value: 'Perempuan',
                                      child: Text('Perempuan'),
                                    ),
                                  ],
                                  value: _dropDownValue,
                                  hint: Text(
                                    'Pilih Jenis Kelamin',
                                    style: styleHintText,
                                  ),
                                  isExpanded: true,
                                  onChanged: (String? value) {
                                    setState(
                                      () {
                                        _dropDownValue = value!;
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 18.h,
                            ),
                            Text(
                              'UMUR',
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
                                keyboardType: TextInputType.number,
                                controller: umurController,
                                decoration: InputDecoration(
                                  hintText: 'Masukkan Umur',
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
                                  hintText: 'Masukkan Username',
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
                                register();
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
                                    'REGISTER',
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
                              height: 18.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Sudah punya akun? ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8.h,
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
            ),
          ],
        ),
      )),
    );
  }
}
