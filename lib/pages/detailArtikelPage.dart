import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';

class DetailArtikelPage extends StatefulWidget {
  const DetailArtikelPage({super.key});

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
                  'assets/image_dummy.png',
                  width: 300.w,
                  height: 177.h,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur.',
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
                  'Lorem ipsum dolor sit amet consectetur. Tincidunt eget integer nulla cursus consectetur sodales malesuada convallis. Lacus rutrum sit blandit augue etiam. Hendrerit commodo nulla orci in morbi. Proin dolor dolor risus tortor. Fermentum sed ut laoreet massa eu ipsum arcu. Posuere sollicitudin magnis purus facilisi est proin imperdiet. Imperdiet lacus semper suscipit elementum consequat faucibus ornare senectus posuere. Sed orci nulla aliquam est venenatis. Tincidunt senectus sit mauris lorem egestas quis. Aenean consectetur velit cras elementum sit sollicitudin cursus ultricies iaculis. Dis vitae bibendum in orci amet. Mi egestas tristique vestibulum egestas mi. Id adipiscing non congue porta erat gravida facilisis a nisl.',
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