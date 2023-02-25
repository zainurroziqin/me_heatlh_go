import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:me_heatlh_go/config/session.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cUser.dart';
import 'package:me_heatlh_go/model/user.dart';
import 'package:me_heatlh_go/pages/loginPage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final cUser = Get.put(CUser());

  logout() async {
    Session.clearUser();
    Get.to(const LoginPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
          padding: EdgeInsets.only(top: 8.h, bottom: 50.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 24.h,
              ),
              Text(
                'AKUN',
                style: inter70016.copyWith(fontSize: 20.sp),
              ),
              SizedBox(
                height: 21.h,
              ),
              Center(
                child: Container(
                  width: 330.w,
                  height: 250.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10.w, top: 25.h),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.person,
                              size: 56,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Nama : ${cUser.data.name}',
                                  style: inter40014.copyWith(
                                      fontSize: 16.sp, color: blackColor),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Sekolah : ${cUser.data.asalSekolah}',
                                  style: inter40014.copyWith(
                                      fontSize: 16.sp, color: blackColor),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Jenis Kelamin : ${cUser.data.jenisKelamin}',
                                  style: inter40014.copyWith(
                                      fontSize: 16.sp, color: blackColor),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Umur : ${cUser.data.umur} Tahun',
                                  style: inter40014.copyWith(
                                      fontSize: 16.sp, color: blackColor),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60.h,
                      ),
                      GestureDetector(
                        onTap: () => logout(),
                        child: Container(
                          width: 130.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: secondaryColor),
                          child: Center(
                            child: Text(
                              'Logout',
                              style: sarala40016.copyWith(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w700,
                                  color: blackColor),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
