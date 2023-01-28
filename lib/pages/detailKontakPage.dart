import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:me_heatlh_go/config/api.dart';
import 'package:me_heatlh_go/config/theme.dart';
import 'package:me_heatlh_go/model/konsultan.dart';
import 'package:me_heatlh_go/model/kontak.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailKontakPage extends StatefulWidget {
  final Konsultan konsultan;

  DetailKontakPage({super.key, required this.konsultan});

  @override
  State<DetailKontakPage> createState() => _DetailKontakPageState();
}

class _DetailKontakPageState extends State<DetailKontakPage> {
  TextEditingController messageController = TextEditingController();
  String? noTelepon;

  sendMessage() async {
    String text = 'https://wa.me/${noTelepon!}?text=${messageController.text}';
    var url = Uri.parse(text);
    await canLaunchUrl(url)
        ? await launchUrl(url, mode: LaunchMode.externalApplication)
        : throw 'Could not launch $url';
  }

  getNomor() {
    String no = widget.konsultan.noHp!;
    noTelepon = no.substring(1);
  }

  @override
  void initState() {
    // TODO: implement initState
    getNomor();
    super.initState();
  }

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
                    child: CircleAvatar(
                      radius: 48,
                      backgroundImage: NetworkImage(
                          '${Api.baseUrlImg}/${widget.konsultan.imageUrl!}'),
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
                        widget.konsultan.nama!,
                        style: sarala40016.copyWith(color: whiteColor),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        widget.konsultan.pekerjaan!,
                        style: sarala40016.copyWith(
                            color: whiteColor.withOpacity(0.7),
                            fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        widget.konsultan.noHp!,
                        style: sarala40016.copyWith(
                            color: whiteColor, fontSize: 12.sp),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      Text(
                        widget.konsultan.alamat!,
                        style: sarala40016.copyWith(
                            color: whiteColor, fontSize: 12.sp),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 41.w,
              ),
              Container(
                width: 330.w,
                height: 69,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: whiteColor),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  controller: messageController,
                  decoration: InputDecoration(
                      hintText: 'Ketik pesan',
                      hintStyle: TextStyle(fontSize: 14.sp),
                      isDense: true,
                      border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(10))),
                  maxLines: 5,
                  minLines: 3,
                  // controller: cpfcontroller,
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              GestureDetector(
                onTap: () {
                  sendMessage();
                },
                child: Container(
                  width: 130.w,
                  height: 30.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: secondaryColor),
                  child: Center(
                    child: Text(
                      'KIRIM',
                      style: sarala40016.copyWith(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: blackColor),
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
