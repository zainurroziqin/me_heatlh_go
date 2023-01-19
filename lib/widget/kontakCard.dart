import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/model/artikel.dart';

import '../config/theme.dart';
import '../model/kontak.dart';

class kontakCard extends StatelessWidget {

  final Kontak kontak;

  const kontakCard({
    Key? key,
    required this.kontak
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 7.5.h),
      child: Container(
        width: 330.w,
        height: 100.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: whiteColor),
        child: Row(
          children: [
            SizedBox(
              width: 70.w,
              height: 70.h,
              child: CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage(kontak.imageUrl),
              ),
            ),
            SizedBox(width: 27.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 11.h,),
                Text(
                  kontak.nama,
                  style: sarala40016.copyWith(color: blackColor),
                ),
                Text(
                  kontak.jabatan,
                  style: sarala40016.copyWith(color: lightColor, fontSize: 12.sp),
                ),
                Text(
                  kontak.noTelepon,
                  style: sarala40016.copyWith(color: primariColor, fontSize: 12.sp),
                ),
                Text(
                  kontak.alamat,
                  style: sarala40016.copyWith(color: blackColor, fontSize: 12.sp),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}