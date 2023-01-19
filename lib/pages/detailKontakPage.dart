import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/theme.dart';

class DetailKontakPage extends StatelessWidget {
  const DetailKontakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kembali'),
        backgroundColor: blueColor,
      ),
      backgroundColor: primariColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Column(
            children: [
              SizedBox(height: 57.h),
              Row(
                children: [
                  SizedBox(
                    width: 150.w,
                    height: 150.h,
                    child: const CircleAvatar(
                      radius: 48,
                      backgroundImage: AssetImage('assets/image_dummy.png'),
                    ),
                  ),
                  SizedBox(
                    width: 18.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        'Dr. Raymond',
                        style: sarala40016.copyWith(color: whiteColor),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'Psikolog',
                        style: sarala40016.copyWith(
                            color: whiteColor.withOpacity(0.7),
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        '+6288765321889',
                        style: sarala40016.copyWith(
                            color: whiteColor, fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        'Jember, Jawa Timur',
                        style: sarala40016.copyWith(
                            color: whiteColor, fontSize: 12.sp),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 41.w,),
              Container(
                width: 330.w,
                height: 69,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: whiteColor),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  //  controller: _opTextController,
                  decoration:  InputDecoration(
                    hintText: 'Ketik pesan',
                    hintStyle: TextStyle(fontSize: 14.sp),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10)
                       )),
                  maxLines: 5,
                  minLines: 3,
                  // controller: cpfcontroller,
                ),
              ),
              SizedBox(height: 36.h,),
              GestureDetector(
                onTap: (){},
                child: Container(
                  width: 130.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: secondaryColor
                  ),
                  child:  Center(
                    child: Text(
                      'KIRIM',
                      style: sarala40016.copyWith(fontSize: 12.sp, fontWeight: FontWeight.w700, color: blackColor),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
