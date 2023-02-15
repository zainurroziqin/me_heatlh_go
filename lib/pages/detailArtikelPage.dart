import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/artikel.dart';

import '../config/api.dart';

class DetailArtikelPage extends StatefulWidget {
  final Artikel artikel;
  const DetailArtikelPage({super.key, required this.artikel});

  @override
  State<DetailArtikelPage> createState() => _DetailArtikelPageState();
}

class _DetailArtikelPageState extends State<DetailArtikelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primariColor,
        appBar: AppBar(
          title: const Text('Kembali'),
          backgroundColor: blueColor,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 26.h,
                ),
                widget.artikel.thumbnail == ""
                    ? Center(
                        child: Image.asset(
                        'assets/no_image.png',
                        width: 300.w,
                        height: 177.h,
                      ))
                    : Center(
                      child: Image.network(
                          '${Api.baseUrlImg}/${widget.artikel.thumbnail!}',
                          width: 300.w,
                          height: 177.h),
                    ),
                SizedBox(height: 8.h,),    
                Text(
                  widget.artikel.judul!,
                  style: inter40014.copyWith(fontSize: 18.sp, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 11.h,
                ),
                Row(
                  children: [
                    Image.asset('assets/Time_progress.png'),
                    SizedBox(
                      width: 7.w,
                    ),
                    Text(
                      widget.artikel.createdAt!,
                      style: inter30014,
                    ),
                  ],
                ),
                Text(
                  widget.artikel.deskripsi!,
                  style: inter40014.copyWith(fontSize: 16.sp),
                )
              ],
            ),
          ),
        )));
  }
}
