import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/artikel.dart';

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
      appBar: AppBar(title: const Text('Kembali'), backgroundColor: blueColor,),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 26.h,),
                Image.asset(
                  widget.artikel.imageUrl,
                  width: 300.w,
                  height: 177.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  widget.artikel.judul,
                  style: inter40014.copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 11.h,),
                Row(
                  children: [
                    Image.asset('assets/Time_progress.png'),
                    SizedBox(width: 7.w,),
                    Text('17 Januari 2023', style: inter30014,),
                  ],
                ),
                Text(
                  widget.artikel.isi,
                  style: inter40014.copyWith(fontSize: 16.sp),
                )
              ],
            ),
          ),
        )
      ) 
    );
  }
}