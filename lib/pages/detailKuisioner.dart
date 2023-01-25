import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';

class DetailKuisioner extends StatefulWidget {
  const DetailKuisioner({Key? key}) : super(key: key);

  @override
  State<DetailKuisioner> createState() => _DetailKuisionerState();
}

class _DetailKuisionerState extends State<DetailKuisioner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primariColor,
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, bottom: 50.h),
        child: Center(
          child: Text('Detail Kuisioner'),
        ),
      ),
    );
  }
}
