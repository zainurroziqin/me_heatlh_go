import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/controller/cKuisioner.dart';
import 'package:me_heatlh_go/pages/home/kuisionerPage.dart';

class DetailKuisioner extends StatefulWidget {
  const DetailKuisioner({Key? key}) : super(key: key);

  @override
  State<DetailKuisioner> createState() => _DetailKuisionerState();
}

class _DetailKuisionerState extends State<DetailKuisioner> {
  int? hasil;
  String? deskripsi;
  final cKuisioner = Get.put(CKuisioner());
  getHasil() {
    hasil = cKuisioner.hasil;
    if (hasil! > 95) {
      deskripsi = 'Mengalami depresi';
    } else {
      deskripsi = 'Tidak mengalami depresi';
    }
  }

  kembali() async {
    cKuisioner.resetPanjang();
    cKuisioner.resetHasil();
    cKuisioner.resetValidasiJawaban();
    Get.back(result: true);
  }

  @override
  void initState() {
    super.initState();
    getHasil();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  'Hasil dari pengisian Kuisioner adalah : ${hasil}',
                  style: inter40014.copyWith(
                    color: blackColor,
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  '=== ${deskripsi} ===',
                  style: inter40014.copyWith(
                      color: blackColor, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 15.h,
                ),
                // Text(
                //   '${jsonEncode(cKuisioner.details)}',
                // // ),
                // SizedBox(
                //   height: 30.h,
                // ),
                GestureDetector(
                  onTap: () {
                    kembali();
                  },
                  child: Container(
                    width: 200.w,
                    height: 40.h,
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
                    child: Center(
                      child: Text(
                        'KEMBALI',
                        style: sarala40016.copyWith(
                            fontSize: 12.sp,
                            color: blackColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
