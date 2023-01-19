import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/model/Kuisioner.dart';

import '../config/theme.dart';

class kuisionerCard extends StatefulWidget {
  final Kuisioner kuisioner;

  const kuisionerCard({Key? key, required this.kuisioner}) : super(key: key);

  @override
  State<kuisionerCard> createState() => _kuisionerCardState();
}

class _kuisionerCardState extends State<kuisionerCard> {
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                width: 313.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.kuisioner.nomerSoal,
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
                              widget.kuisioner.soal,
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
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val!;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                ),
                RadioListTile(
                  value: 2,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val!;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                ),
                RadioListTile(
                  value: 3,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val!;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                ),
                RadioListTile(
                  value: 4,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val!;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                ),
                RadioListTile(
                  value: 5,
                  groupValue: _value,
                  onChanged: (val) {
                    setState(() {
                      _value = val!;
                    });
                  },
                  activeColor: Colors.blue,
                  title: Text("TP (Tidak Pernah)"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
