import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/api.dart';
import 'package:me_heatlh_go/model/konsultan.dart';
import 'package:me_heatlh_go/pages/detailKontakPage.dart';

import '../config/theme.dart';
import '../model/kontak.dart';

class kontakCard extends StatelessWidget {
  final Konsultan konsultan;

  const kontakCard({Key? key, required this.konsultan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 7.5.h),
      child: InkWell(
        onTap: () {
          Get.to(DetailKontakPage(
            konsultan: konsultan,
          ));
        },
        child: Container(
          width: 330.w,
          height: 120.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Row(
            children: [
              SizedBox(
                width: 19.w,
              ),
              SizedBox(
                width: 70.w,
                height: 70.h,
                child: CircleAvatar(
                    radius: 48,
                    backgroundImage: NetworkImage(
                      '${Api.baseUrlImg}/${konsultan.imageUrl!}',
                    )),
              ),
              SizedBox(
                width: 27.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 11.h,
                  ),
                  SizedBox(
                    width: 210.w,
                    child: Text(
                      konsultan.nama!,
                      style: sarala40016.copyWith(color: blackColor),
                    ),
                  ),
                  Text(
                    konsultan.pekerjaan!,
                    style: sarala40016.copyWith(
                        color: lightColor, fontSize: 12.sp),
                  ),
                  Text(
                    konsultan.noHp!,
                    style: sarala40016.copyWith(
                        color: primariColor, fontSize: 12.sp),
                  ),
                  SizedBox(
                    width: 210.w,
                    child: Text(
                      konsultan.alamat!,
                      style: sarala40016.copyWith(
                          color: blackColor, fontSize: 12.sp),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
