import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/controller/cKuisioner.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';

import '../config/theme.dart';

class kuisionerCard extends StatefulWidget {
  final Kuisioner kuisioner;

  kuisionerCard({Key? key, required this.kuisioner}) : super(key: key);

  @override
  State<kuisionerCard> createState() => _kuisionerCardState();
}

class _kuisionerCardState extends State<kuisionerCard> {
  int value = 0;
  int hasil = 0;
  int reset = 0;
  final cKuisioner = Get.put(CKuisioner());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 350.h,
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
                width: 330.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.kuisioner.idKuisioner,
                      style: inter30014.copyWith(
                          fontSize: 16.sp, color: blackColor),
                      textAlign: TextAlign.justify,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.h),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 290.w,
                            child: Text(
                              widget.kuisioner.pertanyaan,
                              style: inter30014.copyWith(
                                  fontSize: 16.sp, color: blackColor),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                RadioListTile(
                  value: 1,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      cKuisioner.setUpdate(value);
                      value = val!;
                      hasil = val;
                      cKuisioner.setHasil(hasil);
                      hasil = cKuisioner.hasil;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                  selected: false,
                ),
                RadioListTile(
                  value: 2,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      cKuisioner.setUpdate(value);
                      value = val!;
                      hasil = val;
                      cKuisioner.setHasil(hasil);
                      hasil = cKuisioner.hasil;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("JP (Jarang)"),
                ),
                RadioListTile(
                  value: 3,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      cKuisioner.setUpdate(value);
                      value = val!;
                      hasil = val;
                      cKuisioner.setHasil(hasil);
                      hasil = cKuisioner.hasil;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("KD (Kadang-kadang)"),
                ),
                RadioListTile(
                  value: 4,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      cKuisioner.setUpdate(value);
                      value = val!;
                      hasil = val;
                      cKuisioner.setHasil(hasil);
                      hasil = cKuisioner.hasil;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("SR (Sering)"),
                ),
                RadioListTile(
                  value: 5,
                  groupValue: value,
                  onChanged: (val) {
                    setState(() {
                      cKuisioner.setUpdate(value);
                      value = val!;
                      hasil = val;
                      cKuisioner.setHasil(hasil);
                      hasil = cKuisioner.hasil;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("SL (Selalu)"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
