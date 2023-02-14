import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:me_heatlh_go/controller/cKuisioner.dart';
import 'package:me_heatlh_go/model/kuisioner.dart';
import 'package:me_heatlh_go/pages/detailKuisioner.dart';
import 'package:me_heatlh_go/source/source_kuisioner.dart';

import '../config/theme.dart';
import '../controller/cUser.dart';

class kuisionerCard extends StatefulWidget {
  final Kuisioner kuisioner;

  kuisionerCard({Key? key, required this.kuisioner}) : super(key: key);

  @override
  State<kuisionerCard> createState() => _kuisionerCardState();
}

class _kuisionerCardState extends State<kuisionerCard> {
  // int value = 0;
  int hasil = 0;
  int reset = 0;

  final cKuisioner = Get.put(CKuisioner());

  // List<int> list = [0];
  // int? panjang;

  // getPanjangList() async {
  //   panjang = cKuisioner.listKuisioner.length;

  //   for (int i = 0; i < panjang!-1; i++) {
  //     list.add(0);
  //   }
  // }

  final cUser = Get.put(CUser());

  final snackBar = const SnackBar(
    content: Text('ISI SEMUA KUISIONER YAA :)'),
  );

  @override
  void initState() {
    super.initState();
    cKuisioner.getPanjangList();
  }

  addJawaban() async {
    int nilai = cKuisioner.hasil;
    String hasil;
    if (nilai > 95) {
      hasil = 'Mengalami depresi';
    } else {
      hasil = 'Tidak mengalami depresi';
    }
    bool success = await SourceKuisioner.postJawaban(cUser.data.idUser!,
        jsonEncode(cKuisioner.details), nilai.toString(), hasil);
    if (success) {
      Future.delayed(const Duration(milliseconds: 2000), () {
        Get.to(const DetailKuisioner());
      });
    }
  }

  String detailJawabanKuis = "";
  List details = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 400.h,
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
                          widget.kuisioner.nomor,
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
                      groupValue: cKuisioner.dataList[int.parse(widget.kuisioner.nomor)],
                      onChanged: (val) {
                        setState(() {
                          cKuisioner.setUpdate(
                              cKuisioner
                              .dataList[int.parse(widget.kuisioner.nomor)]);
                          cKuisioner.removeDetails(detailJawabanKuis);

                          cKuisioner
                                  .dataList[int.parse(widget.kuisioner.nomor)] = val!;
                          hasil = val;

                          detailJawabanKuis =
                              '{kuis: ${widget.kuisioner.idKuisioner} | nilai: $val}';

                          cKuisioner.setHasil(hasil);
                          hasil = cKuisioner.hasil;

                          cKuisioner.setDetails(detailJawabanKuis);
                          details = cKuisioner.details;
                        });
                      },
                      activeColor: Colors.blue,
                      title: const Text("TP (Tidak Pernah)"),
                      selected: false,
                    ),
                    RadioListTile(
                      value: 2,
                      groupValue: cKuisioner
                          .dataList[int.parse(widget.kuisioner.nomor)],
                      onChanged: (val) {
                        setState(() {
                          cKuisioner.setUpdate(
                              cKuisioner
                              .dataList[int.parse(widget.kuisioner.nomor)]);
                          cKuisioner.removeDetails(detailJawabanKuis);

                          cKuisioner
                                  .dataList[int.parse(widget.kuisioner.nomor)] = val!;
                          hasil = val;

                          detailJawabanKuis =
                              '{kuis: ${widget.kuisioner.idKuisioner} | nilai: $val}';

                          cKuisioner.setHasil(hasil);
                          hasil = cKuisioner.hasil;

                          cKuisioner.setDetails(detailJawabanKuis);
                          details = cKuisioner.details;
                        });
                      },
                      activeColor: Colors.blue,
                      title: const Text("JP (Jarang)"),
                    ),
                    RadioListTile(
                      value: 3,
                      groupValue: cKuisioner
                          .dataList[int.parse(widget.kuisioner.nomor)],
                      onChanged: (val) {
                        setState(() {
                          cKuisioner.setUpdate(
                              cKuisioner
                              .dataList[int.parse(widget.kuisioner.nomor)]);
                          cKuisioner.removeDetails(detailJawabanKuis);

                          cKuisioner
                                  .dataList[int.parse(widget.kuisioner.nomor)] = val!;
                          hasil = val;

                          detailJawabanKuis =
                              '{kuis: ${widget.kuisioner.idKuisioner} | nilai: $val}';

                          cKuisioner.setHasil(hasil);
                          hasil = cKuisioner.hasil;

                          cKuisioner.setDetails(detailJawabanKuis);
                          details = cKuisioner.details;
                        });
                      },
                      activeColor: Colors.blue,
                      title: const Text("KD (Kadang-kadang)"),
                    ),
                    RadioListTile(
                      value: 4,
                      groupValue: cKuisioner
                          .dataList[int.parse(widget.kuisioner.nomor)],
                      onChanged: (val) {
                        setState(() {
                          cKuisioner.setUpdate(
                              cKuisioner
                              .dataList[int.parse(widget.kuisioner.nomor)]);
                          cKuisioner.removeDetails(detailJawabanKuis);

                          cKuisioner
                                  .dataList[int.parse(widget.kuisioner.nomor)] = val!;
                          hasil = val;

                          detailJawabanKuis =
                              '{kuis: ${widget.kuisioner.idKuisioner} | nilai: $val}';

                          cKuisioner.setHasil(hasil);
                          hasil = cKuisioner.hasil;

                          cKuisioner.setDetails(detailJawabanKuis);
                          details = cKuisioner.details;
                        });
                      },
                      activeColor: Colors.blue,
                      title: const Text("SR (Sering)"),
                    ),
                    RadioListTile(
                      value: 5,
                      groupValue: cKuisioner
                          .dataList[int.parse(widget.kuisioner.nomor)],
                      onChanged: (val) {
                        setState(() {
                          cKuisioner.setUpdate(
                              cKuisioner
                              .dataList[int.parse(widget.kuisioner.nomor)]);
                          cKuisioner.removeDetails(detailJawabanKuis);

                          cKuisioner
                                  .dataList[int.parse(widget.kuisioner.nomor)] = val!;
                          hasil = val;

                          detailJawabanKuis =
                              '{kuis: ${widget.kuisioner.idKuisioner} | nilai: $val}';

                          cKuisioner.setHasil(hasil);
                          hasil = cKuisioner.hasil;

                          cKuisioner.setDetails(detailJawabanKuis);
                          details = cKuisioner.details;
                        });
                      },
                      activeColor: Colors.blue,
                      title: const Text("SL (Selalu)"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        widget.kuisioner.idKuisioner == "${cKuisioner.listKuisioner.length}"
            ? GestureDetector(
                onTap: () {
                  // print('$list');
                  addJawaban();
                  // Get.to(const DetailKuisioner());
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
                      'SUBMIT',
                      style: sarala40016.copyWith(
                          fontSize: 12.sp,
                          color: blackColor,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink()
      ],
    );
  }
}
