import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/config/api.dart';
import 'package:me_heatlh_go/model/artikel.dart';
import 'package:me_heatlh_go/pages/detailArtikelPage.dart';

import '../config/theme.dart';

class artikelCard extends StatelessWidget {
  final Artikel artikel;

  const artikelCard({Key? key, required this.artikel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: InkWell(
        onTap: () {
          Get.to(DetailArtikelPage(
            artikel: artikel,
          ));
        },
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 130.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: whiteColor),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 6.w,
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: artikel.thumbnail == ""
                        ? Image.asset('assets/no_image.png', width: 125.w, height: 74.h,)
                        : Image.network(
                            '${Api.baseUrlImg}/${artikel.thumbnail!}',
                            width: 125.w,
                            height: 74.h,
                          )),
                SizedBox(
                  width: 19.w,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 26.h),
                  child: SizedBox(
                    width: 170.w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          artikel.judul!,
                          style: inter40014.copyWith(
                              fontSize: 16.sp, color: blackColor),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.pending_outlined, size: 12.h),
                            Text(
                              artikel.createdAt!,
                              style: inter30014.copyWith(
                                  fontSize: 11.sp, color: lightColor),
                            ),
                            Text(
                              'Administrator',
                              style: inter40014.copyWith(
                                  fontSize: 11.sp, color: lightColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          'Selengkapnya...',
                          style: inter40014.copyWith(
                            fontSize: 11.sp,
                            color: blueColor,
                          ),
                        )
                      ],
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
