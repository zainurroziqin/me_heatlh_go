import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/model/Kuisioner.dart';

import '../config/theme.dart';

class kuisionerCard extends StatelessWidget {
  final Kuisioner kuisioner;

  const kuisionerCard({Key? key, required this.kuisioner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 170.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: whiteColor,
        ),
        padding: EdgeInsets.only(left: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: SizedBox(
                width: 313.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      kuisioner.nomerSoal,
                      style: inter30014.copyWith(
                          fontSize: 16.sp, color: blackColor),
                      textAlign: TextAlign.justify,
                    ),
                    Column(
                      children: [
                        SizedBox(
                            width: 290.w,
                            child: Text(
                              kuisioner.soal,
                              style: inter30014.copyWith(
                                  fontSize: 16.sp, color: blackColor),
                              textAlign: TextAlign.justify,
                            )),
                      ],
                    )
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
